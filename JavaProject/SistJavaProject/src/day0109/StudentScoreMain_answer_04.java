package day0109;

import java.util.Scanner;

public class StudentScoreMain_answer_04 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int inwon;
		StudentScore_answer_04 [] stu;
		String schoolName;
		
		System.out.println("입력할 인원수?");
		inwon=Integer.parseInt(sc.nextLine());
		System.out.println("학교명?");
		schoolName=sc.nextLine();
		
		StudentScore_answer_04.setSchoolName(schoolName);
		
		//인원수만큼 Student 배열 할당
		stu=new StudentScore_answer_04[inwon];
		
		//인원수만큼 입력
		for(int i=0;i<inwon;i++) {
			System.out.println(i+"번 학생이름");
			String name=sc.nextLine();
			System.out.println("자바점수와 HTML점수 입력");
			int java=Integer.parseInt(sc.nextLine());
			int html=Integer.parseInt(sc.nextLine());
			
			//i번째 StudentScore_answer 생성
			stu[i]= new StudentScore_answer_04();
			
			stu[i].setName(name);
			stu[i].setJava(java);
			stu[i].setHtml(html);
		}
		
		System.out.println("***결과 출력***");
		System.out.println("학교명: "+StudentScore_answer_04.getSchoolName());
		System.out.println();
		System.out.println("학생명\tJAVA\tHTML\t총점\t평균\t평가");
		System.out.println("=============================================");
		for(int i=0;i<stu.length;i++) {
			stu[i].writeStudentScore();
		}
		
		/*
		for(StudentScore_answer_04 s1:stu) {
			s1.writeStudentScore();
		}
		*/
	}

}
