package day0109;

import java.util.Scanner;

public class StudentScoreMain_04 {

	public static void write(StudentScore_04 [] score) {
		System.out.println("학교명: "+StudentScore_04.getSchoolName());
		System.out.println("이름\tjava\thtml\t합계\t평균\t평가");
		for(StudentScore_04 s:score) {
			System.out.println(s.getName()+"\t"+s.getJava()+"\t"+s.getHtml()+"\t"
								+s.sum()+"\t"+s.avg()+"\t"+s.result());
		}
	}
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.print("인원을 입력하세요>>> ");
		int inwon=Integer.parseInt(sc.nextLine());
		
		StudentScore_04 [] score=new StudentScore_04[inwon];
		
		for(int i=0;i<inwon;i++) {
			score[i]=new StudentScore_04();
			System.out.print("이름 입력>>>");
			String name=sc.nextLine();
			System.out.print("java 점수 입력>>>");
			int java=Integer.parseInt(sc.nextLine());
			System.out.print("html 점수 입력>>>");
			int html=Integer.parseInt(sc.nextLine());
		
			score[i].setName(name);
			score[i].setJava(java);
			score[i].setHtml(html);
			
			System.out.println();
		}
		
		write(score);

	}

}
