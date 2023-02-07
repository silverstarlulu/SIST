package day1228;

public class OperTest_04 {

	public static void main(String[] args) {
		boolean bool = false;
		
		System.out.println("a = " + bool);
		System.out.println("b = " + !bool);
		
		boolean bool1 = 5>3;
		System.out.println("c = " + bool1);
		System.out.println("d = " + !(5>3));
		
		//System.out.println("e = " + !5); //숫자를 바로 부정할수는 x
		
		
		int a = 3, b = 3, c = 5;
		
		System.out.println(a > b);
		System.out.println(a == b);
		System.out.println(!(a==b));
		System.out.println(a != b);
		System.out.println(a>b && c>b);
		System.out.println(a>b || c>b);
	}

}
