package day1228;

import java.util.Calendar;
import java.util.Scanner;

public class QuizScannerMyInfo_02 {

	public static void main(String[] args) {
		//import
		Scanner sc = new Scanner(System.in);
		Calendar cal  = Calendar.getInstance();
		
		//변수선언
		String name, address, phone;
		int myYear, age;
		
		//입력
		System.out.print("이름 입력: ");
		name = sc.nextLine();
		System.out.print("태어난 연도: ");
		myYear = Integer.parseInt(sc.nextLine());
		System.out.print("핸드폰 번호: ");
		phone = sc.nextLine();
		System.out.print("주소: ");
		address = sc.nextLine();
		
		//계산
		age = cal.get(cal.YEAR) - myYear + 1;
		
		//출력
		System.out.println("==============================");
		System.out.println("이름: " + name);
		System.out.println("나이: " + age + "세");
		System.out.println("핸드폰: " + phone);
		System.out.println("주소: " + address);

	}

}
