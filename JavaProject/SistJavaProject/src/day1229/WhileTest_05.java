package day1229;

public class WhileTest_05 {

	public static void main(String[] args) {
		int n=0;
		
		while(n<10) {
			n++;
			System.out.printf("%-4d",n);
		}
		
		System.out.println("\n=======================================");
		
		n=0;
		
		while(n<10) {
			System.out.printf("%-4d",++n);
		}
		
		System.out.println("\n=======================================");
		
		n=0;
		
		while(n<10) {
			System.out.printf("%-4d",n++);
		}
		
		System.out.println("\n=======================================");
		
		n=0;
		while(true) {
			System.out.printf("%-4d",++n);
			if(n==10)
				break;
			
		}
		
	}

}
