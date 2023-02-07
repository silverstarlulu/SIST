package day0111;

import java.util.Scanner;

public class baek {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		
		int m=n;
		int result,count=0;
		
		while(true) {
			int a=n/10;
			int b=n%10;
			result=b*10+(a+b);
			n=result;
		
			count++;
			
			if (m==result) break;
		
		}
		System.out.println(count);

	}

}
