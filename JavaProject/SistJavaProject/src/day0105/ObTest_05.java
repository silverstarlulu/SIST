package day0105;

class TesetA{
	String name="이수진";
	static String MESSAGE="Happy Day!";
	
}

public class ObTest_05 {
	int a;	//자동으로 초기화
	static int b;
	
	public static void main(String[] args) {
		b=20;
		System.out.println("b="+b);
		
		//일반 멤버변수는 인스턴스가 있어야 접근가능
		ObTest_05 ob1=new ObTest_05();
		ObTest_05 ob2=new ObTest_05();
		ob1.a=100;
		ob2.a=200;
		System.out.println("ob1.a="+ob1.a+", ob2.a="+ob2.a);
		
		TesetA ta=new TesetA();
		System.out.println(ta.name);
		
		System.out.println(TesetA.MESSAGE);

	}

}
