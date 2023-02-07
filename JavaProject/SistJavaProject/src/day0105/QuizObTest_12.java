package day0105;

class StuInfo{
	private String name;
	private String hp;
	public static final String ADDR="Seoul";
	
	public void setter(String name, String hp) {
		this.name=name;
		this.hp=hp;
	}
	
	public String getterN() {
		return name;
	}
	
	public String getterH() {
		return hp;
	}
	
	public void write() {
		System.out.println("지역: "+ADDR);
		System.out.println("이름: "+getterN());
		System.out.println("연락처: "+getterH());
	}
	
	public void showInfo() {
		System.out.println("이름: "+this.name+", 연락처: "+this.hp);
	}
}

public class QuizObTest_12 {
	public static void main(String[] args) {
		
		StuInfo info=new StuInfo();
		info.setter("박예은", "010-1234-5678");
		info.write();
		info.showInfo();

	}

}
