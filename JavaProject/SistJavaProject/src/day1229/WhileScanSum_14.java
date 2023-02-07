package day1229;

import java.util.Scanner;

public class WhileScanSum_14 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i, sum=0, count=0;
		double avg=0;
		
		while(true) {
			System.out.print("숫자 입력(종료:0) >>>");
			i=sc.nextInt();
			
			if(i==0) {
				System.out.println("=====================");
				System.out.println("프로그램 종료");
				break;	
			}
			
			count++;
			sum+=i;
			avg=(double)sum/count;
		}
		
		System.out.println("총 입력갯수: "+count);
		System.out.println("합계: "+sum);
		System.out.println("평균: "+avg);
		
	}

}
