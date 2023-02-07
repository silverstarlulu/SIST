package day1227;

public class PrintfTest_05 {

	public static void main(String[] args) {
		// 문자열을 구성해서 출력하는 printf
		// 문자열 뒤에 따라오는 데이터 순서대로 배치
		// 정수 %d, 실수 %f, 문자 %c, 문자열 %s 
		
		int num1 = 10, num2 = 20;
		int num3 = num1 + num2;
		
		//기존 print 출력
		System.out.println(num1 + " + " + num2 + " = " + num3);
		
		//printf 사용
		System.out.printf("%d + %d = %d", num1, num2, num3);
		System.out.println();
		
		//문제
		String name = "박예은";
		int age = 24;
		System.out.printf("안녕하세요! 제 이름은 %s입니다.\n나이는 %d세 입니다!", name, age);
		
		

	}

}
