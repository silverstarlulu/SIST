package day0111;

public class ArithExcep_10 {

	public static void main(String[] args) {
		System.out.println("프로그램 시작");
		try {
			int num=3/0;	//정수를 0으로 나누면 발생
		}catch (ArithmeticException e) {
			//e.printStackTrace();
		}
		
		System.out.println("프로그램 종료");

	}

}
