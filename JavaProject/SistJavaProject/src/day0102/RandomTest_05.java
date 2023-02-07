package day0102;

public class RandomTest_05 {

	public static void main(String[] args) {
		//1. Math.random( )메서드 사용 : 0.0 <= r < 1.0.. 
		
		System.out.println("10개의 기본 난수 발생");
		for(int i=1;i<=10;i++) {
			double n=Math.random();
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("0~9사이의 10개의 int형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*10);
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("1~10사이의 10개의 int형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*10)+1;
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("1~45사이의 10개의 int형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*45)+1;
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("1~100사이의 10개의 int형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*100)+1;
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("65~90사이의 10개의 int형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*26)+65; //65가 시작값, 65+26-1까지의 숫자
			System.out.println(n);
		}
		
		System.out.println("===========================");
		
		System.out.println("A~Z 사이의 10개의 char형 난수 발생");
		for(int i=1;i<=10;i++) {
			int n=(int)(Math.random()*26)+65; //65가 시작값, 65+26-1까지의 숫자
			System.out.println((char)n);
		}
	}

}
