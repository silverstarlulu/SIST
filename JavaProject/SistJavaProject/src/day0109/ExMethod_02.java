package day0109;

public class ExMethod_02 {

	public static void main(String[] args) {
		System.out.println("2와 3의 합: "+add(2,3));
		System.out.println("4.5의 제곱: "+square(4.5));
		divide(5,2);
		divide(6,0);
	}
	
	public static int add(int num1, int num2) {
		int result=num1+num2;
		return result;
	}
	
	public static double square(double num) {
		double result=num*num;
		return result;
	}
	
	public static void divide(int num1, int num2) {
		if(num2==0) {
			System.out.println("0으로는 나눌 수 없음");
			return;		//메서드의 종료 의미
		}
		System.out.println("나눗셈의 결과: "+num1/num2);
	}

}
