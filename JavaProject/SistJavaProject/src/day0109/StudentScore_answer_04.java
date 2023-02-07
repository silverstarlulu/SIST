package day0109;

public class StudentScore_answer_04 {
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
		StudentScore_answer_04.schoolName = schoolName;
	}
	
	public int getTotal() {
		return java+html;
	}
	
	public double getAverage() {
		return getTotal()/2.0;
	}
	public String getPungga() {
		if(getAverage()>=80)
			return "합격";
		else
			return "불합격";
	}
	
	public void writeStudentScore() {
		System.out.println(getName()+"\t"+getJava()+"\t"+getHtml()+"\t"
							+getTotal()+"\t"+getAverage()+"\t"+getPungga());
	}
}
