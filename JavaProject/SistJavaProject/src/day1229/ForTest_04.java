package day1229;

public class ForTest_04 {

	public static void main(String[] args) {
		for(int i=0;i<3;i++) {
			System.out.println("I love Java "+i);
		}
		
		System.out.println("=============================");
		
		int i;
		for(i=1;i<=10;i++) {
			System.out.println(i+" Hello");
		}
		System.out.println("i="+i);
		System.out.println("for문 빠져나옴");
		
		System.out.println("==============================");
		
		for(int j=1;j<=10;j++) {
			System.out.print(j+" ");
		}
		
		System.out.println("\n==============================");
		
		for(int j=0;j<=4;j++) {
			System.out.print("Hello ");
		}
		
		System.out.println("\n==============================");
		
		for(int j=4;j>=0;j--) {
			System.out.print("Hello ");
		}
		
		System.out.println("\n==============================");
		
		for(int j=1;j<=10;j++) {
			if(j%2==0) System.out.print(j+" ");
		}

	}

}
