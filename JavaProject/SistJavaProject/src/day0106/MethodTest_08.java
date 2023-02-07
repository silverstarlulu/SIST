package day0106;

public class MethodTest_08 {

	public static void goodMorning(int age) {
		System.out.println("좋은아침이융");
		System.out.println("제 나이는 "+age+"살이랍니당");
	}
	
	public static void main(String[] args) {
		System.out.println("프로그램 시작이유~~~!!");
		goodMorning(25);
		hello("이하늬");
		goodMorning(11);
		hello("이효리");
		System.out.println("프로그램 끝이돠.");

	}
	
	public static void hello(String name) {
		System.out.println("hey~~~~~~");
		System.out.println("내 이름은 "+name+"^^");
	}
	

}
