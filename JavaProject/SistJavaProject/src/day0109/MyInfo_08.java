package day0109;

public class MyInfo_08 extends Person_08 {

	int age;
	
	public MyInfo_08(String name, String buseo, int age) {
		this.name=name;
		this.buseo=buseo;
		this.age=age;
	}
	
	public void myInfo() {
		System.out.println("사원명은 "+this.name);
		System.out.println("부서는 "+this.buseo);
		System.out.println("나이는 "+this.age);
	}
	
	@Override
	public void writeInfo() {
		super.writeInfo();
		System.out.println("나이: "+this.age);
	}
	
	public static void main(String[] args) 	{
		MyInfo_08 info1=new MyInfo_08("박예은", "개발부", 25);
		info1.myInfo();
		
		System.out.println();
		System.out.println("**오버라이드 메서드 통한 출력**");
		info1.writeInfo();

	}

}
