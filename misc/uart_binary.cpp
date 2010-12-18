#include <sys/types.h>
#include <sys/stat.h>
#include <sys/signal.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <termios.h>

// 解放が面倒なのでbuffer用
#include <vector>

namespace {

const char* Opts = "f:a:s:r:cb:hv";
const size_t DefaultBufferSize = 1024;
const size_t DefaultBaudRate = 9600;
const size_t DefaultSize = 1024;
const char* Version = "version 1.2";

struct Option{
	bool isSucceeded;

	char* filename;
	int baudRate;
	size_t bufferSize;
	size_t sendSize;
	size_t receiveSize;
	bool isCompareEnabled;

	int fdUSB;

	struct termios oldOptions, newOptions;

	Option(){
		isSucceeded = false;

		filename = NULL;
		baudRate = DefaultBaudRate;
		bufferSize = DefaultBufferSize;
		sendSize = receiveSize = DefaultSize;
		isCompareEnabled = false;

		fdUSB = -1;
	}
};

void usage(){
	fprintf(stderr, "Usage : uart [option]...\n");
	fprintf(stderr, "\t-f arg\t\t: ファイル名（指定の無い場合標準入力）\n");
	fprintf(stderr, "\t-a arg=9600\t: ボーレート\n");
	fprintf(stderr, "\t-c\t\t: 1byteずつの比較を行う\n");
	fprintf(stderr, "\t-s arg=1024\t: 送信するサイズ\n");
	fprintf(stderr, "\t-r arg=1024\t: 受信するサイズ\n");
	fprintf(stderr, "\t-b arg=1024\t: バッファサイズ\n");
	fprintf(stderr, "\t-h\t\t: help\n");
	fprintf(stderr, "\t-v\t\t: version\n");

	exit(EXIT_FAILURE);
}

unsigned int getBaudRate(int baudRate){
	if (baudRate < 14400){
		return B9600;
	}
	else if (baudRate < 28800){
		return B19200;
	}
	else if (baudRate < 48000){
		return B38400;
	}
	else if (baudRate < 86400){
		return B57600;
	}
	else if (baudRate < 122800){
		return B115200;
	}
	else if (baudRate < 345600){
		return B230400;
	}
	else {
	        return B460800;
	}

	return B0;
}

Option processArgs(int argc, char* argv[]){
	int c;
	Option opt;

	while ((c = getopt(argc, argv, Opts)) != -1){
		switch (c){
			case 'f':	// file name
				opt.filename = optarg;
				break;
			case 'a':	// baudrate
				opt.baudRate = atoi(optarg);
				break;
			case 'c':	// compare enable
				opt.isCompareEnabled = true;
				break;
			case 's':	// send size
				opt.sendSize = atoi(optarg);
				break;
			case 'r':	// receive size
				opt.receiveSize = atoi(optarg);
				break;
			case 'b':	// buffer size
				opt.bufferSize = atoi(optarg);
				break;
			case 'h':	// help
				usage();
				break;
			case 'v':	// help
				fprintf(stderr, "%s\n", Version);
				exit(1);
				break;
			default :
				usage();
				break;
		}
	}

	return opt;
}

Option init(int argc, char* argv[]){
	Option opt = processArgs(argc, argv);

	argc -= optind;
	argv += optind;

	if (argc != 0){
		usage();
	}

	int fd;
	for (int i = 0; i < 3; ++i){
		char filename[16];
		sprintf(filename, "/dev/ttyUSB%d", i);
		fd = open(filename, O_RDWR | O_NOCTTY | O_NDELAY);
		if (fd < 0){
			perror("open");
		}
		if (fd > 0){
			fprintf(stderr, "%s open", filename);
			break;
		}
	}

	if (fd < 0){
		return opt;
	}
	else {
		opt.fdUSB = fd;

		if (tcgetattr(fd, &opt.oldOptions) < 0){
			close(fd);
			perror("tcgetattr");
			return opt;
		}
		bzero(&opt.newOptions, sizeof(opt.newOptions));
		struct termios& newOptions = opt.newOptions;

		newOptions.c_cflag = getBaudRate(opt.baudRate) | CS8 | CLOCAL | CREAD;
		newOptions.c_iflag = IGNPAR;
		newOptions.c_oflag = 0;
		newOptions.c_lflag = 0;
		newOptions.c_cc[VTIME] = 0;
		newOptions.c_cc[VMIN] = 1;

		tcflush(fd, TCIFLUSH);
		if (tcsetattr(fd, TCSANOW, &newOptions) < 0){
			close(fd);
			perror("tcsetattr");
			return opt;
		}
		fcntl(fd, F_SETFL, FNDELAY);
	}

	opt.isSucceeded = true;

	return opt;
}

// init <=> unit ...?www
int unit(const Option& opt){
	int ret = tcsetattr(opt.fdUSB, TCSANOW, &opt.oldOptions);
	if (ret < 0){
		perror("tcsetattr");
	}
	if (opt.fdUSB > 0){
		close(opt.fdUSB);
	}

	return ret;
}

void compareData(const char* sent, const char* received, const size_t begin, const size_t size){
	for (size_t i = 0; i < size; ++i){
		if (sent[i] != received[i]){
			printf("[ERROR] ");
		}
		printf("%d : %c => %c\n", begin+i, sent[i], received[i]);
	}
}

int sendData(const Option& opt, const char* buf, size_t size){
	ssize_t nwrite;
	size_t written = 0;

	do {
		nwrite = write(opt.fdUSB, buf+written, size-written);
		if (nwrite < 0){
//			USBに対するwriteは割と失敗することが多い
//			本当はちゃんと無視するエラーメッセージを指定するべき
//			perror("nwrite");
//			return nwrite;
		}
		else if (nwrite == 0){
		}
		else {
			written += nwrite;
		}
	} while (written < size);

	return 0;
}

int receiveData(const Option& opt, char* buf, size_t size){
	ssize_t nread;
	size_t already_read = 0;

	do {
		nread = read(opt.fdUSB, buf+already_read, size-already_read);
		if (nread < 0){
		}
		else if (nread == 0){
		}
		else {
			already_read += nread;
		}
	} while (already_read < size);

	return 0;
}

int writeData(int fd, const char* buf, size_t size){
  size_t written = 0;
  do {
    char c = *(buf + written);
    for(int k=7;k>-1;k--)
      printf("%d", (c & (1 << k)) > 0);
    printf("\n");
    fflush(stdout);
    written ++;
  } while (written < size);

  return written;
}

// 入力
int input(const Option& opt){
	// malloc(bufferSize) ... -> free の代わりに使っているだけ
	std::vector<char> buf_vector(opt.bufferSize), receiveBuf_vector(opt.bufferSize);
	char* buf = &(buf_vector[0]);
	char* receiveBuf = &(receiveBuf_vector[0]);
	int input_fd = STDIN_FILENO;
	int output_fd = STDOUT_FILENO;

	if (opt.filename){
		int fd = open(opt.filename, O_RDONLY);
		if (fd < 0){
			perror("open");
			return fd;
		}
		input_fd = fd;
	}

	size_t readSize = 0;
	size_t writeSize = 0;
	do {
		const size_t SendSize = ((readSize+opt.bufferSize > opt.sendSize)? opt.sendSize-readSize: opt.bufferSize);
		ssize_t nread;
		nread = read(input_fd, buf, SendSize);
		if (nread < 0){
			perror("read");
			return nread;
		}
		else if (nread == 0){
			return 0;
		}
		int ret = sendData(opt, buf, nread);
		if (ret < 0){
			return ret;
		}
		ret = receiveData(opt, receiveBuf, nread);
		if (ret < 0){
			return ret;
		}
		const ssize_t LeftSize = opt.receiveSize - writeSize;
		writeSize += nread;
		if (opt.isCompareEnabled){
			compareData(buf, receiveBuf, readSize, nread);
		}
		else if (LeftSize > 0) {
			const size_t WriteSize = ((LeftSize < nread)? LeftSize: nread);
			writeData(output_fd, receiveBuf, WriteSize);
		}
		readSize += nread;
	} while (readSize < opt.sendSize);

	return 0;
}

}

int main(int argc, char* argv[]){
	const ::Option opt = ::init(argc, argv);

	if (!opt.isSucceeded){
		exit(EXIT_FAILURE);
	}

	const int ret = ::input(opt);
	const int ret2 = ::unit(opt);
	if (ret<0 || ret2<0){
		exit(EXIT_FAILURE);
	}

	return 0;
}

