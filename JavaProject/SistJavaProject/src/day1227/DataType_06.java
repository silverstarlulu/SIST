package day1227;

public class DataType_06 {

	public static void main(String[] args) {
		//기본 자료형 8개
		
		//1. 논리형 true, false
		boolean flag = false;
		System.out.println("<boolean형 연습>");
		System.out.println("flag = " + flag);
		System.out.println("flag = " + !flag);
		System.out.println();
		
		//2. 문자형
		//반드시 하나의 문자를 가지며, 문자하나 2바이트(한글도 가능)
		//기본적으로 정수형, 아스키코드로 변경 가능
		//' ' 작은따옴표로 표현
		System.out.println("<문자형 연습>");
		char ch = '가';
		System.out.println("ch = " + ch);
		System.out.println();
		
		//3. 정수형
		//1바이트, -128 ~ +127
		System.out.println("<정수형 연습>");
		byte	a = -128;
		short	b = 32000;
		int		c = 67000;	//32bit
		long	d = 100L;	//L을 붙이지 않으면 기본형인 int로 인식, 64bit
		System.out.println("a = "+ a);
		System.out.println("b = "+ b);
		System.out.println("c = "+ c);
		System.out.println("d = "+ d);
		System.out.println();
		
		//4. 실수형
		System.out.println("<실수형 연습>");
		double	dou = 3456.678;	//64bit
		float	f = 3.1234f;	//f를 붙이지 않으면 기본형인 double로 인식, 32bit
		System.out.println("dou = " + dou);
		System.out.println("f   = " + f);
		System.out.println();
		
		System.out.println("<자릿수 연습>");
		//전체 자릿수 10자리, 소숫점 2자리
		System.out.printf("dou = %10.2f\n", dou);
		//소숫점 1자리
		System.out.printf("dou = %.1f\n", dou);
	}

}
