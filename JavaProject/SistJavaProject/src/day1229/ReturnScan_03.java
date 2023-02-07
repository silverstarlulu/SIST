package day1229;

import java.util.Scanner;

public class ReturnScan_03 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int score;
		
		System.out.print("점수입력(1~100) >>> ");
		score=sc.nextInt();
		
		if(score<0||score>100) {
			System.out.println("기준에 맞는 숫자를 입력하세요.");
			return;   //현재 메인함수 종료
		}else {
			System.out.println("점수: "+score);
		}
	}

}
