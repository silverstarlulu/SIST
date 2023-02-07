package exex;

import java.util.Scanner;

class StudentScore{
	private String name;
	private int java;
	private int html;
	private static String schoolName;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJava() {
		return java;
	}
	public void setJava(int java) {
		this.java = java;
	}
	public int getHtml() {
		return html;
	}
	public void setHtml(int html) {
		this.html = html;
	}
	public static String getSchoolName() {
		return schoolName;
	}
	public static void setSchoolName(String schoolName) {
		StudentScore.schoolName = schoolName;
	}
	
	public int getTotal() {
		return java+html;
	}
	
	public double getAverage() {
		return getTotal()/2.0;
	}
	
	public String getPungga() {
		if(getAverage()>=80) return "합격";
		else return "불합격";
	}
	
	public static void showTitle() {
		System.out.println("**결과 출력**");
		System.out.println("학교명: "+getSchoolName());
		System.out.println("학생명\tJAVA\tHTML\t총점\t평균\t평가");
		System.out.println("==============================================");
		
	}
}

public class StudentScore_main {

	public static void writeData(StudentScore[] ss) {
		StudentScore.showTitle();
		for(StudentScore s:ss) {
			System.out.println(s.getName()+"\t"+s.getJava()+"\t"+s.getHtml()+"\t"+
					s.getTotal()+"\t"+s.getAverage()+"\t"+s.getPungga());
		}
	}
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		StudentScore [] stu;
		
		System.out.print("학교명 입력 >> ");
		StudentScore.setSchoolName(sc.nextLine());
		System.out.print("인원 입력 >> ");
		int inwon=Integer.parseInt(sc.nextLine());
		
		stu=new StudentScore[inwon];
		
		for(int i=0;i<inwon;i++) {
			stu[i]=new StudentScore();
			
			System.out.print("이름>> ");
			String name=sc.nextLine();
			System.out.println("JAVA점수 및 HTML 점수>> ");
			int java=Integer.parseInt(sc.nextLine());
			int html=Integer.parseInt(sc.nextLine());
			
			stu[i].setName(name);
			stu[i].setJava(java);
			stu[i].setHtml(html);
			
			System.out.println();
		}
		
		writeData(stu);
		
	}

}
