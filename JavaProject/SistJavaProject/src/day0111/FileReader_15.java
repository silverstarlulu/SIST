package day0111;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileReader_15 {

	public static void read() {
		//경로 표시할땐 '/' or '\\'
		String fileName="C:\\sist1226\\file\\memo1.txt";
		BufferedReader br=null;
		FileReader fr=null;
		
		try {
			//읽기위해서 filereader로 파일 열기
			fr=new FileReader(fileName);	
			System.out.println("파일 열엇음~!");
			
			//연 파일을 읽으려면 bufferreader 필요
			br=new BufferedReader(fr);
			
			//파일 안이 여러줄이므로 while문 필요
			while(true) {
				String s=br.readLine();
				
				//마지막 줄 일경우 null값을 읽어 break 필요
				if(s==null) break;
				
				System.out.println(s);
			}
		
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
		} finally {
			//자원 닫음 필요
			try {
				br.close();		//마지막에 사용한 것부터 닫기
				fr.close();
				
				System.out.println("파일에 대한 자원 모두 닫음~!");
			
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
