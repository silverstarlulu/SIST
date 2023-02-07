package day0111;

class Outer{
	String name="최보현";
	int age=25;
	
	//내부클래스 #1
	class Inner1{
		//내부클래스에서는 외부클래스 멤버변수 사용 가능
		
		public void disp1() {
			System.out.println("**inner1 내부클래스**");
			System.out.println("이름: "+name+", 나이: "+age);
		}
	}
	
	//내부클래스 #2
	class Inner2{
		public void disp2() {
			System.out.println("**inner2 내부클래스**");
			System.out.println("이름: "+name+", 나이: "+age);
		}
	}
	
	//외부클래스의 메서드
	public void disp() {
		Inner1 in1=new Inner1();
		in1.disp1();
		
		System.out.println("==================");
		
		Inner2 in2=new Inner2();
		in2.disp2();
	}
}

public class InnerClass_03 {

	public static void main(String[] args) {
		Outer out=new Outer();
		out.disp();
		
		System.out.println("==================");
		System.out.println("직접 내부클래스의 메서드 호출하려면?");
		Outer.Inner1 inner1=new Outer().new Inner1();
		inner1.disp1();
		
		Outer.Inner2 inner2=out.new Inner2();
		inner2.disp2();
	}

}
