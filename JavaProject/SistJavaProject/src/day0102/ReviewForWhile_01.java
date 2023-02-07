package day0102;

import java.util.Scanner;

public class ReviewForWhile_01 {
	public static void whileTest() {
		Scanner sc=new Scanner(System.in);
		int su;
		int cnt=0,sum=0;
		double avg;
		
		while(true) {
			System.out.print("점수 입력(1~100) >>> ");
			su=sc.nextInt();
			
			if(su==0) break;
			if(su<0 || su>100) {
				System.out.println("\n재입력");
				continue;
			}
			
			cnt++;
			sum+=su;
		}
		
		avg=(double)sum/cnt;
		
		System.out.println("==============");
		System.out.println("점수 개수: "+cnt+"개");
		System.out.println("점수 합계: "+sum+"점");
		System.out.println("점수 평균: "+avg+"점");
		
	}
	
	public static void forTest() {
		Scanner sc=new Scanner(System.in);
		int score;
		int sum=0;
		
		for(int i=1;i<=5;i++) {
			System.out.print(i+"번 점수: ");
			score=sc.nextInt();
			
			if(score<1 || score>100) {
				System.out.println("재입력");
				i--;
				continue;
			}
			
			sum+=score;
		}
		
		System.out.println("===================");
		System.out.println("총점: "+sum+"점");
	}
	
	public static void main(String[] args) {
		whileTest();
		System.out.println("===================");
		forTest();

	}

}
