package day0109;

public class ExMethod_01 {

	public static int sum(int a, int b) {
		System.out.println("첫번째 함수 호출");
		return a+b;
	}
	
	public static double sum(int a, double b) {
		System.out.println("두번째 함수 호출");
		return a+b;
	}
	
	public static double sum(double a, int b) {
		System.out.println("세번째 함수 호출");
		return a+b;
	}
	
	public static double sum(double a, double b) {
		System.out.println("네번째 함수 호출");
		return a+b;
	}
	
	public static void main(String[] args) {
		
		//인자타입에 따라 자동으로 중복함수가 호출
		System.out.println(sum(3, 7));
		System.out.println(sum(3,7.0));
		System.out.println(sum(3.0,7));
		System.out.println(sum(3.0,7.0));

	}

}
