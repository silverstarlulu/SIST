package day1227;

public class CastingNum_03 {

	public static void main(String[] args) {
		//String -> int 
		//Integer.parseInt("1");
		//문자열 1이 정수 1로 반환되는 메서드
		
		//String -> Double
		//Double.parseDouble("12.3");
		//문자열 12.3이 실수 12.3으로 반환되는 메서드
		
		String su1 = "9";
		String su2 = "5";
		
		System.out.println("변환 전 두 수 더하기 : " + (su1+su2));
		System.out.println();
		
		//문자열 su1, su2를 정수타입 int로 변환 후 계산
		int s1 = Integer.parseInt(su1);
		int s2 = Integer.parseInt(su2);
		
		System.out.println("변환 후 두 수 더하기	: "	+ (s1+s2));
		System.out.println("변환 후 두 수 빼기	: "	+ (s1-s2));
		System.out.println("변환 후 두 수 곱하기	: "	+ (s1*s2));
		System.out.println("변환 후 두 수 나누기	: "	+ (s1/s2));	//정수형끼리 연산 시 결과도 정수형

	}

}
