package day1229;

import java.util.Scanner;

public class ForScanSum_15 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int score;
		int sum=0;
		
		for(int i=1;i<=3;i++) {
			System.out.print("입력하시오(1~100) >>> ");
			score=sc.nextInt();

			if(score<1||score>100) {
				System.out.println("다시 입력하세요.\n");
				i--;
				continue;
			}

			sum+=score;
			
		}
		
		System.out.println("합계: "+sum);

	}

}
