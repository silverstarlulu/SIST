package day1229;

import java.util.Scanner;

public class QuizScanSum_10 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int num,sum=0;
		
		System.out.println("합계를 구할 숫자는?");
		num=sc.nextInt();
		
		for(int i=1;i<=num;i++) {
			sum+=i;
		}
		
		System.out.println("=================");
		System.out.println("1~"+num+"까지의 합: "+sum);

	}

}
