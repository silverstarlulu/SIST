package day0112;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class ExFileWriter_06 {

	public static void fileWrite() {
		FileWriter fw=null;
		String fileName="C:\\sist1226\\file\\text1.txt";		//어디에 저장할지
		
		try {
			fw=new FileWriter(fileName);		//파일 새로 생성
			
			//파일에 내용 추가
			fw.write("Have a Nice Day!!!\n");
			fw.write(new Date().toString());
			
			System.out.println("**파일저장성공**");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void fileWrite2() {
		FileWriter fw=null;
		String fileName="C:\\sist1226\\file\\text2.txt";
		
		try {
			fw=new FileWriter(fileName, true);		//true: 추가모드
			
			fw.write("내 이름은 박예은입니당~!\n");
			fw.write("==========================\n");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		fileWrite();
		fileWrite2();
	}

}
