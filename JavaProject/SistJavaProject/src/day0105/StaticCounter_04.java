package day0105;

public class StaticCounter_04 {
	static int count=0;
	
	//생성자
	public StaticCounter_04() {
		count++;
		System.out.println(count);
	}
	
	public static void main(String[] args) {
		StaticCounter_04 c1=new StaticCounter_04();
		StaticCounter_04 c2=new StaticCounter_04();
		StaticCounter_04 c3=new StaticCounter_04();

	}

}
