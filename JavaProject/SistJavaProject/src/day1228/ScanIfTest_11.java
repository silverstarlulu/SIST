package day1228;

import java.util.Scanner;

public class ScanIfTest_11 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int score;
		String grade,msg;
		
		System.out.print("점수를 입력하세요. >>> ");
		score=sc.nextInt();
		
		msg=score>=90?"장학생":score>=80?"좀 더 노력하세요":"다음 기회에";
		
		//grade=score>=90?"A":score>=80?"B":score>=70?"C":score>=60?"D":"F";
		if		(score>=90)	grade="A";
		else if	(score>=80)	grade="B";
		else if	(score>=70)	grade="C";
		else if	(score>=60)	grade="D";
		else				grade="F";
		
		System.out.println("점수: "+score+"점");
		System.out.println("학점: "+grade);
		System.out.println("평가 메시지: "+msg);
		
	}

}
