package day0109;

public class Person_08 {
	protected String name;
	protected String buseo;
	
	public void writeInfo() {
		System.out.println("**부모변수 출력**");
		System.out.println("이름: "+this.name);
		System.out.println("부서: "+this.buseo);
	}
}
