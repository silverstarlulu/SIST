package day0105;

public class ExObject_01 {
	
	String name;	//인스턴스 변수
	static final String MESSAGE="Happy Day!!!"; //static 변수
	
	public static void main(String[] args) {
		
		//static 변수 호출하기
		System.out.println("static 멤버변수는 new로 생성없이 호출 가능");
		System.out.println(ExObject_01.MESSAGE);	//클래스명.변수명
		System.out.println(MESSAGE); 				//같은 클래스내에서는 클래스명 생략 가능
		//MESSAGE="Nice";	//final이라서 값 변경 불가능
		
		System.out.println();
		
		//instance 변수 호출하기
		ExObject_01 ob1=new ExObject_01();
		ob1.name="영희";
		
		ExObject_01 ob2=new ExObject_01();
		ob2.name="철수";
		
		ExObject_01 ob3=new ExObject_01();
		ob3.name="예우닝'^'";
		
		System.out.println(ob1.name);
		System.out.println(ob2.name);
		System.out.println(ob3.name);
		
		System.out.println();
		
		System.out.println("다 같이 사용하는 메세지: "+MESSAGE);
		
		
	}

}
