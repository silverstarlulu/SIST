package day0110;

class MySchool{
	public static final String SCHOOLNAME="강남고등학교";
	private String schoolAddr;
	private int countStu;
	private int countTeacher;
	
	public MySchool() {
		this("송파구",200,15);
	}
	
	public MySchool(String sAddr,int cStu,int cTeach) {
		this.schoolAddr=sAddr;
		this.countStu=cStu;
		this.countTeacher=cTeach;
	}
	
	public String getSchoolAddr() {
		return schoolAddr;
	}

	public void setSchoolAddr(String schoolAddr) {
		this.schoolAddr = schoolAddr;
	}

	public int getCountStu() {
		return countStu;
	}

	public void setCountStu(int countStu) {
		this.countStu = countStu;
	}

	public int getCountTeacher() {
		return countTeacher;
	}

	public void setCountTeacher(int countTeacher) {
		this.countTeacher = countTeacher;
	}

	public static String getSchoolname() {
		return SCHOOLNAME;
	}
	
	public void writeData() {
		System.out.println("학교주소: "+this.schoolAddr);
		System.out.println("학생 수: "+this.countStu
							+", 선생님 수: "+this.countTeacher);
	}
}

class MyStudent extends MySchool{
	private String stuName;
	private int score;

	public MyStudent() {
		//super();
		this.stuName="박예은";
		this.score=80;
	}
	
	public MyStudent(String sAddr,int cStu,int cTeach,String stuName,int score) {
		super(sAddr,cStu,cTeach);
		this.stuName=stuName;
		this.score=score;
	}
	
	public String getStuName() {
		return stuName;	
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	@Override
	public void writeData() {
		System.out.println("학교명: "+SCHOOLNAME);
		super.writeData();
		System.out.println("학생이름: "+this.stuName);
		System.out.println("점수: "+this.score);
	}
}

public class ExInherit_01 {
	public static void main(String[] args) {
		System.out.println("==========기본생성자로 stu1출력==========");
		MyStudent stu1=new MyStudent();
		stu1.writeData();
		
		System.out.println();
		
		System.out.println("=========명시적 생성자로 stu2출력=========");
		MyStudent stu2=new MyStudent("부천시",300,40,"아메리카노",70);
		stu2.writeData();
		
		System.out.println();
		
		System.out.println("=====setter로 학생값 변경 후 stu2출력=====");
		stu2.setStuName("호올스");
		stu2.setScore(20);
		
		stu2.writeData();	

	}

}
