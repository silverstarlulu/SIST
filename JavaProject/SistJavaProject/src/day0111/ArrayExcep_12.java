package day0111;

public class ArrayExcep_12 {

	public static void main(String[] args) {
		String[] str= {"apple","banana","orange","strawberry","kiwi"};
		
		System.out.println("차례대로 출력");
		
		for(int i=0;i<=str.length;i++) {
			try {
				System.out.println(str[i]);
			}catch (ArrayIndexOutOfBoundsException e) {
				System.out.println("배열요구: "+e.getMessage());
			}
			
		}
		
		System.out.println("거꾸로 출력");
		for(int i=str.length;i>=0;i--) {
			try {
				System.out.println(str[i]);
			}catch (ArrayIndexOutOfBoundsException e) {
				System.out.println("거꾸로 출력 중 오류: "+e.getMessage());
			}
			
		}
		
	}

}
