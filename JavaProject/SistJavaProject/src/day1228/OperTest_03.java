package day1228;

public class OperTest_03 {

	public static void main(String[] args) {
		int a, b;
		a = b = 5;
		
		++a;
		b++;
		
		System.out.println("a = " + a + ", b = " + b);
		
		int m, n;
		m = n = 0;
		a = b = 5;
		
		m = a++;	//후치
		System.out.println("m = " + m + ", a = " + a);
		
		n = ++b;	//전치
		System.out.println("n = " + n + ", b = " + b);
	}

}
