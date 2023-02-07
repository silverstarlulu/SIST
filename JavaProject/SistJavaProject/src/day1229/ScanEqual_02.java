package day1229;

import java.util.Scanner;

public class ScanEqual_02 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String msg;
		
		System.out.println("영어단어를 입력해주세요.(ex. happy, angel, rose)");
		System.out.print(">>> ");
		msg=sc.nextLine();
		
		System.out.println("입력한 문자열: "+msg);
		
		if(msg.equals("happy")) 
			System.out.println("행복");
		else if(msg.equals("angel"))
			System.out.println("천사");
		else if(msg.equalsIgnoreCase("rose"))
			System.out.println("장미");
		else
			System.out.println("등록되지 않은 단어");

	}

}
