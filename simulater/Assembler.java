import java.io.*;
import java.util.*;

class GetReg{
	public int getRegnum(String s){
		if (s.charAt(0)!='r'){
			System.out.println("called getRegnum, but argument s="+s+" : not a register");
			System.exit(1);
		}
		return Integer.parseInt(s.substring(1));
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
		while((str=br.readLine()) != null){
			if(str.charAt(str.length()-1)==':'){
			    //			    System.out.println(str.substring(0,str.length()-1));
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
		int code=0;
		int op,s,t,d,i;
		try{
		DataOutputStream os = new DataOutputStream(new FileOutputStream(args[1]));
		System.out.println(instMem.size());
		for(int k=0;k<instMem.size();k++){
			String str= instMem.get(k);
			String inst[]= str.split(" ");
			if(inst[0].equals("add")){
			    op=56 << 26; s=gr.getRegnum(inst[1])<<20;t=gr.getRegnum(inst[2])<<14;d=gr.getRegnum(inst[3])<<8;
			    code=op+s+t+d;
			}
			else if(inst[0].equals("jump")){
			    op=60 << 26; i=tagmap.get(inst[1]);
			    code=op+i;
			}
			else{
			    System.out.println(inst[0]+" is not defined");
			    System.exit(1);
			}
			os.writeInt(code);
		}
		}
		catch(Exception e){
			System.out.println("Write Error : " + e);
			System.exit(1);
		}
	}
}

		
