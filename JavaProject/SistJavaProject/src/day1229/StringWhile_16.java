package day1229;

import java.util.Scanner;

public class StringWhile_16 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String name;
		int cnt=0;
		
		while(true) {
			System.out.println("이름을 입력하세요(종료:끝) >>> ");
			name=sc.nextLine();
			
			if(name.equals("끝")) {
				System.out.println("프로그램을 종료합니다.");
				break;
			}
			
			if(name.startsWith("김"))
				cnt++;
			
		}
		
		System.out.println("김씨는 총 "+cnt+"명");

	}

}
