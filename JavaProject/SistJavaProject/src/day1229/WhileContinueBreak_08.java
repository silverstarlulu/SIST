package day1229;

import java.util.Scanner;

public class WhileContinueBreak_08 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int score;
		int sum=0;
		
		
		while(true) {
			System.out.print("점수를 입력하세요 >>> ");
			score=sc.nextInt();
			if(score<0||score>100) {
				System.out.println("다시 입력하시오.");
				continue;
			}
			sum+=score;
			if(score==0) break;
		}
		
		System.out.println("\n총 합계: "+sum);
	}

}
