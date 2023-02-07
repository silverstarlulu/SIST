package day1229;

import java.util.Scanner;

public class ReviewForWhile_17 {

	public static void test1() {
		int sum=0;
		
		for(int i=1;i<=5;i++) {
			sum+=i;
		}
		
		System.out.println("총 합계는 "+sum);
	}
	
	public static void sumTest2() {
		int sum=0;
		for(int i=1;i<=10;i++) {
			if(i%2==1) {
				sum+=i;
			}
		}
		System.out.println("홀수의 합계는 "+sum);
	}
	
	public static void sumTest3() {
		int sum=0;
		int i=0;
		for(;i<=10;i++) {
			sum+=i;
		}
		System.out.println("1부터 "+(i-1)+"까지 합은 "+sum);
	}
	
	public static void quiz4(){
		Scanner sc=new Scanner(System.in);
		int score;
		int sum=0;
		
		for(int i=1;i<=5;i++) {
			System.out.print(i+"번 점수: ");
			score=sc.nextInt();
			
			if(score<1||score>100) {
				System.out.println("잘못 입력했어요\n");
				i--;
				continue;
			}
			
			sum+=score;
		}
		
		System.out.println("\n총합계: "+sum);
	}
	
	public static void quiz5() {
		Scanner sc=new Scanner(System.in);
		int num;
		int plus=0, minus=0;
		
		while(true) {
			System.out.print("숫자 입력: ");
			num=sc.nextInt();
			
			if(num==0)
				break;
			
			if(num>0)
				plus++;
			else if(num<0)
				minus++;
			
		}
		
		System.out.println("=====프로그램종료======");
		System.out.println("양수개수: "+plus+"개");
		System.out.println("음수개수: "+minus+"개");
	}
	
	public static void main(String[] args) {
		//test1();
		//sumTest2();
		//sumTest3();
		//quiz4();
		quiz5();

	}

}
