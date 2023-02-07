package day0111;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Filefile {
	public static void fileRead() {
		String fileName="C:\\sist1226\\file\\info1.txt";
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(fileName);
			br=new BufferedReader(fr);
			
			System.out.println("**파일읽기_학생정보**");
			System.out.println("이름\t학교\t학년");
			System.out.println("------------------------");
			
			while(true) {
				String s=br.readLine();
				
				if(s==null) break;
				
				String[] data=s.split(",");
				
				System.out.println(data[0]+"\t"+data[1]+"\t"+data[2]);
				
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
		fileRead();

	}

}
