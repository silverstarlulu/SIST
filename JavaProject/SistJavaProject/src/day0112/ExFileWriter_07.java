package day0112;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class ExFileWriter_07 {
	//생성 후 불러오기
	
	Scanner sc=new Scanner(System.in);
	FileWriter fw;
	static final String FILENAME="C:\\sist1226\\file\\number.txt";
	
	public void dataWrite() {
		try {
			fw=new FileWriter(FILENAME,true);
			
			//키보드로 이름, 주소, 핸드폰 입력 후 파일에 저장
			System.out.print("이름 입력 >> ");
			String name=sc.nextLine();
			
			System.out.print("주소입력 >> ");
			String addr=sc.nextLine();
			
			System.out.print("핸드폰입력 >> ");
			String hp=sc.nextLine();
			
			System.out.println("**파일 저장~! 파일 확인하쇼~!**");
			
			//파일에 저장
			fw.write("회원명: "+name+"\n");
			fw.write("주소: "+addr+"\n");
			fw.write("연락처: "+hp+"\n==================================\n");
			
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
		ExFileWriter_07 ex=new ExFileWriter_07();
		ex.dataWrite();
	}

}
