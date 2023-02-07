package day0112;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.NumberFormat;

public class QuizSawonFile_05 {
	public static void payRead() {
		String fileName="C:\\sist1226\\file\\sawon.txt";
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(fileName);
			br=new BufferedReader(fr);
			
			System.out.println("번호\t사원명\t기본급\t가족수\t초과근무시간\t가족수당\t\t시간수당\t\t총급여");
			System.out.println("===========================================================================================");
			
			int n=0;
			
			while(true) {
				String s=br.readLine();
				
				if(s==null) break;
				
				String data[]=s.split(",");
				String name=data[0];
				int gibon=Integer.parseInt(data[1]);
				int famsu=Integer.parseInt(data[2]);
				int timesu=Integer.parseInt(data[3]);
				
				int f_sudang=famsu*50000;
				int t_sudang=timesu*25000;
				int total=gibon+f_sudang+t_sudang;
				NumberFormat nf=NumberFormat.getCurrencyInstance();
				
				System.out.println(++n+"\t"+name+"\t"+gibon+"\t"+famsu+"\t"+timesu+"\t\t"+nf.format(f_sudang)+"\t"+nf.format(t_sudang)+"\t"+nf.format(total));
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public static void main(String[] args) {
		payRead();

	}

}
