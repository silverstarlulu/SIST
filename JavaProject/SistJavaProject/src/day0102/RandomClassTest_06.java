package day0102;

import java.util.Random;

public class RandomClassTest_06 {

	public static void main(String[] args) {
		//2. Random이라는 클래스를 생성해서 구하는 방법
		
		Random r=new Random();
		
		System.out.println("0~9사이의 난수 5개 발생");
		for(int i=1;i<=5;i++) {
			int n=r.nextInt(10);			// 0~9
			System.out.println(n);
		}
		System.out.println("=====================");
		
		System.out.println("0~99사이의 난수 5개 발생");
		for(int i=1;i<=5;i++) {
			int n=r.nextInt(100);			// 0~99
			System.out.println(n);
		}
		
		System.out.println("=====================");
		
		System.out.println("1~10사이의 난수 5개 발생");
		for(int i=1;i<=5;i++) {
			int n=r.nextInt(10)+1;
			System.out.println(n);
		}
		
		System.out.println("=====================");
		
		System.out.println("A~Z사이의 난수 5개 발생");
		for(int i=1;i<=5;i++) {
			int n=r.nextInt(26)+65;
			System.out.println((char)n);
		}
	}

}
