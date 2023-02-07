package day1227;

public class DataType_07 {

	public static void main(String[] args) {
		byte a = 127;		//-128 ~ 127
		byte b = (byte)128;	//더 작은 자료형으로 변환, 값손실 o (디모션)
		
		System.out.println("a = " + a);
		System.out.println("b = " + b);
		
		
		
		
		//강제 형변환(cast연산자)
		int x = 7;
		int y = 4;
		
		System.out.println(x / y);			//정수형끼리 계산 시 결과는 int
		
		//수식 중 하나라도 double이 있으면 결과는 double
		System.out.println((double)x / y);	//계산시 x를 double 변환해서 계산: 결과 double
		System.out.println(x / (double)y);	//계산시 y를 double 변환해서 계산: 결과 double
	
		
		
		
		double d = 100.0;
		int i = 100;
		int result = (int)d + i;
		double result2 = d + i;
		
		System.out.println("d = " + d);
		System.out.println("i = " + i);
		System.out.println("result = " + result);
		System.out.println("result2 = " + result2);
	}

}
