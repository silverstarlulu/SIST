package day1228;

import java.util.Scanner;

public class QuizPass_17 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		String name,msg;
		int kor,eng,mat;
		double avg;
		
		System.out.print("이름을 입력해주세요 >>> ");
		name=sc.nextLine();
		System.out.print("국, 영, 수 점수를 입력해주세요 >>> ");
		kor=sc.nextInt();
		eng=sc.nextInt();
		mat=sc.nextInt();
		
		avg=(kor+eng+mat)/3.0;
		
		if(avg>=70&&kor>=40&&eng>=40&&mat>=40) {
			msg="합격";
		} else msg="불합격";
		
		System.out.println("=========================");
		System.out.println("응시자명: "+name);
		System.out.println("국어 점수: "+kor+"점");
		System.out.println("영어 점수: "+eng+"점");
		System.out.println("수학 점수: "+mat+"점");
		System.out.println("평균: "+avg+"점");
		System.out.println(name+"님은 "+msg+"입니다.");
	}

}
