package day1229;

public class FactorialEx_09 {

	public static void main(String[] args) {
		int result=1;
		
		for(int i=1;i<=10;i++) {
			result*=i;
			System.out.println(i+"! = "+result);
		}

	}

}
