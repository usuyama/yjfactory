import java.io.*;
import java.util.*;

class GetReg{
    public StringBuffer toStr_nlen(int num, int len){ /* int を 長さlenの2進数表示のstrigbufferに変換 */
	StringBuffer regStr = new StringBuffer();
	int mask = 1 << (len-1);
	for(int i=0;i<len;i++){
	    if((mask&num)!=0)
		regStr.append('1');
	    else
		regStr.append('0');
	    mask = mask >> 1;
	}
	return regStr;
    }
    public StringBuffer strToBstr(String s, int len){ /* string を 長さlenの2進数表示のstringbufferに変換 */
	return toStr_nlen(Integer.parseInt(s),len);
    }
    public StringBuffer getRegnum(String s){ /* rX を X を長さ5の2進数表示のstringbufferに変換 */
	if (s.charAt(0)!='r'){
	    System.out.println("called getRegnum, but argument s="+s+" : not a register");
	    System.exit(1);
	}

	int tmp = Integer.parseInt(s.substring(1));
	return toStr_nlen(tmp,5);
    }	
}

public class Assembler {
	private static ArrayList<String> instMem = new ArrayList<String>();
	
	public static void main(String[] args) {
		HashMap<String, Integer> tagmap = new HashMap();
		int count=0;
		try{
		BufferedReader br = new BufferedReader(new FileReader(args[0]));
		String str = new String();

		/* タグと行の対応関係をマップするとともに、命令をarrayにロード */
		while((str=br.readLine()) != null){
			if(str.charAt(str.length()-1)==':'){
			    tagmap.put(str.substring(0,str.length()-1), count);
			}
			else{
			    instMem.add(str);
			    count++;
			}
		}
		}
		catch(Exception e){
			System.out.println("Error: " + e);
			System.exit(1);
		}
	
		GetReg gr = new GetReg();


		try{
		    BufferedWriter bw = new BufferedWriter( new FileWriter(new File(args[1])));

		    for(int k=0;k<instMem.size();k++){
			StringBuffer code = new StringBuffer(32);
			String str= instMem.get(k);
			String inst[]= str.split(" ");

			if(inst[0].equals("add")){
			    code.append("111000");
			    code.append(gr.getRegnum(inst[1]));
			    code.append(gr.getRegnum(inst[2]));
			    code.append(gr.getRegnum(inst[3]));
			    code.append("00000000000");
			}
			else if(inst[0].equals("jump")){
			    code.append("010110");
			    code.append(gr.toStr_nlen(tagmap.get(inst[1]), 26));
			}
			else{
			    System.out.println(inst[0]+" is not defined");
			    System.exit(1);
			}
			//			System.out.println(code.toString());
			bw.write(code.toString());
			bw.newLine();
		    }
		    bw.close();
		}
		catch(Exception e){
		    System.out.println("Write Error : " + e);
		    System.exit(1);
		}
	}
}