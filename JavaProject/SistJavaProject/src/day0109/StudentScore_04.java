package day0109;

public class StudentScore_04 {
	private String name;
	private int java;
	private int html;
	private static String schoolName="쌍용고등학교";
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
		StudentScore_04.schoolName = schoolName;
	}
	
	public int sum() {
		return this.java+this.html;
	}
	
	public double avg() {
		return this.sum()/2.0;
	}
	
	public String result() {
		if(this.avg()>=80) return "합격";
		else return "불합격";
				
	}
}
