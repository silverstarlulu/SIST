package day0102;

import java.util.Scanner;



public class ReviewForWhile_00 {
	public static void quiz5() {
		Scanner sc=new Scanner(System.in);
		int i;
		int plus=0, minus=0;
		
		while(true) {
			System.out.print("숫자입력: ");
			i=sc.nextInt();
			
			if(i>0) plus++;
			else if(i<0) minus++;
			else break;
		}
		
		System.out.println("==============");
		System.out.println("양수 개수: "+plus+"개");
		System.out.println("음수 개수: "+minus+"개");
	}
	
	public static void main(String[] args) {
		quiz5();
	}

}
