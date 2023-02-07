package day0111;

import java.io.IOException;
import java.io.InputStream;

public class Exception_13 {

	public static void main(String[] args) {
		InputStream is=System.in;	//콘솔에서 입력받기 위한 스트림
		
		int n=0;
		
		System.out.print("한글자 입력 >> ");
		try {
			n=is.read();			//한바이트밖에 못 읽어서 한글(2바이트) x
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("오류: e.getMessage()");
		}
		
		System.out.println("**3초뒤에 출력합니다**");
		
		try {
			Thread.sleep(3000);		//1000 당 1초
		} catch (InterruptedException e) {
			e.printStackTrace();
		} 	
		System.out.println("입력값: "+(char)n);
	}

}
