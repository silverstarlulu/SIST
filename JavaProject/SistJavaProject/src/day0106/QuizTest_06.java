package day0106;

class Score{
	private String stuName;
	private int java;
	private int oracle;
	
	public static final String TITLE="자바 시험 결과";

	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public int getJava() {
		return java;
	}
	public void setJava(int java) {
		this.java = java;
	}
	public int getOracle() {
		return oracle;
	}
	public void setOracle(int oracle) {
		this.oracle = oracle;
	}
	
	public int getTot() {
		int total=this.getJava()+this.getOracle();
		return total;
	}
	
	public double getAvg() {
		double avg=this.getTot()/2.0;
		return avg;
	}
	
}

public class QuizTest_06 {

	public static void main(String[] args) {
		Score s=new Score();
		s.setStuName("박지윤");
		s.setJava(67);
		s.setOracle(88);
		
		System.out.println("**Score 클래스**");
		System.out.println(s.TITLE);
		System.out.println("이름: "+s.getStuName());
		System.out.println("자바점수: "+s.getJava());
		System.out.println("오라클점수: "+s.getOracle());
		System.out.println("합계: "+s.getTot());
		System.out.println("평균: "+s.getAvg());
		
	}

}
