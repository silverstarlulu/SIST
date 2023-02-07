package day0111;

class OuterObj{
	
	class InnerObj{
		public void write() {	//내부클래스의 멤버
			System.out.println("내부클래스의 메서드");
		}
	}
	
	public void disp() {		//외부클래스의 멤버
		System.out.println("외부클래스의 메서드");
		System.out.println("외부에서 내부클래스의 메서드 호출");
		
		InnerObj inObj=new InnerObj();		//내부클래스 객체 생성
		inObj.write();
	}
}

public class InnerClassTest_02{

	public static void main(String[] args) {
		OuterObj outObj=new OuterObj();		//외부클래스 객체 생성
		outObj.disp();
		
		System.out.println("------------------------------------");
		
		System.out.println("#1");
		OuterObj.InnerObj obj1=new OuterObj().new InnerObj();
		obj1.write();
		
		System.out.println("#2");
		OuterObj.InnerObj obj2=outObj.new InnerObj();
		obj2.write();

	}

}
