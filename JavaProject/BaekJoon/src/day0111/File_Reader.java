package day0111;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class File_Reader {
	public static void read() {
		String fileName="C:\\sist1226\\file\\memo2.txt";
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(fileName);
			System.out.println("파일 열었음");
			
			br=new BufferedReader(fr);
			
			while(true) {
				String s=br.readLine();
				if(s==null) break;
				
				System.out.println(s);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
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
		read();
		System.out.println("**정상종료**");

	}

}
