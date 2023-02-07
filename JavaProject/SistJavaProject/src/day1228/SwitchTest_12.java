package day1228;

import java.util.Scanner;

public class SwitchTest_12 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);

		int num;

		System.out.print("숫자 입력 >>> ");
		num=sc.nextInt();

		switch(num) {
		case 1:
			System.out.println("input 1");
			break;
		case 2:
			System.out.println("input 2");
			break;
		case 3:
			System.out.println("input 3");
			break;
		default:
			System.out.println("not 1, 2, 3");
			break;
		}
		
		switch(num%2) {
		case 0:
			System.out.println(num+" : 짝수");
			break;
		case 1:
			System.out.println(num+" : 홀수");
			break;
		}
	}

}
