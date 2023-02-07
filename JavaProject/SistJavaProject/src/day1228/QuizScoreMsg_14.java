package day1228;

import java.util.Scanner;

public class QuizScoreMsg_14 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		String name, msg;
		int java, oracle, spring;
		int sum;
		double avg;
		
		System.out.print("이름을 입력하세요 >>> ");
		name=sc.nextLine();
		/*
		System.out.print("자바 점수를 입력하세요 >>> ");
		java=sc.nextInt();
		System.out.print("오라클 점수를 입력하세요 >>> ");
		oracle=sc.nextInt();
		System.out.print("스프링 점수를 입력하세요 >>> ");
		spring=sc.nextInt();
		*/
		System.out.print("자바, 오라클, 스프링 점수를 차례대로 입력하세요 >>> ");
		java=sc.nextInt();
		oracle=sc.nextInt();
		spring=sc.nextInt();
		
		sum=java+oracle+spring;
		avg=sum/3.0;
		
		if(avg>=80) msg="합격";
		else if(avg>=70) msg="노력할것";
		else msg="불합격";
		
		System.out.println("==================================================");
		System.out.println("이름: "+name);
		System.out.println("자바점수: "+java+"점, 오라클점수: "+oracle+"점, 스프링점수: "+spring+"점");
		System.out.println("총점: "+sum+"점");
		System.out.printf("평균: %.1f점\n", avg);
		System.out.println("평가 메시지: "+msg);

	}

}
