package day0106;

public class MethodTest_14 {

	public static boolean aaa() {
		return false;
	}
	
	public static int bbb() {
		return 3;
	}
	
	public static int ccc(int x,int y) {
		int z=x+y;
		return z;
	}
	
	public static void main(String[] args) {
		boolean a=aaa();
		System.out.println("a="+a);

		int b=bbb();
		System.out.println("b="+b);
	
		int c=ccc(4,5);
		System.out.println("c="+c);
	}

}
