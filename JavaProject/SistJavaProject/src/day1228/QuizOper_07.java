package day1228;

import java.util.Scanner;

public class QuizOper_07 {

	public static void main(String[] args) {
		//알바비를 입력하여 만원, 천원, 백원, 십원, 일원 갯수 출력
		Scanner sc = new Scanner(System.in);
		
		/*
		int pay, a, b, c, d, e, f, g, h, i;
		
		System.out.println("알바비를 입력하세요 >>> ");
		pay = sc.nextInt(); 
		
		a = pay / 10000;
		System.out.println("만원: " + a);
		b = pay % 10000;
		c = b / 1000;
		System.out.println("천원: " + c);
		d = b % 1000;
		e = d / 100;
		System.out.println("백원: " + e);
		f = d % 100;
		g = f / 10;
		System.out.println("십원: " + g);
		h = f % 10;
		i = h / 1;
		System.out.println("일원: " + i);
		*/
	
		int pay;
		
		System.out.println("알바비를 입력하세요 >>> ");
		pay = sc.nextInt();
		
		System.out.println("만원: " + pay/10000);
		System.out.println("천원: " + (pay%10000)/1000);
		System.out.println("백원: " + (pay%1000)/100);
		System.out.println("십원: " + (pay%100)/10);
		System.out.println("일원: " + (pay%10)/1);
	}

}
