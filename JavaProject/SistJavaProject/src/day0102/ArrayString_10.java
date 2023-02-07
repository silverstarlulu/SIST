package day0102;

public class ArrayString_10 {

	public static void main(String[] args) {
		String [] str;
		str=new String[4];
		
		str[0]="주하랑";
		str[1]="성한경";
		str[2]="최보현";
		str[3]="지성웅";
		
		for(int i=0;i<str.length;i++) {
			System.out.println("str["+i+"] = "+str[i]);
		}
		
		System.out.println();
		
		for(String a:str) {
			System.out.println(a);
		}
		
		System.out.println("=====================");
		
		int[] arr={7,12,34,99,23};
		String[] colors={"red","yellow","white","gray","black","cyan","pink"};
		
		System.out.println("arr의 길이: "+arr.length);
		System.out.println("\nfor문 사용한 arr 출력");
		for(int i=0;i<arr.length;i++) {
			System.out.println("arr["+i+"] = "+arr[i]);
		}
		System.out.println("\nfor~each문 사용한 arr 출력");
		for(int a:arr) {
			System.out.println(a);
		}
		
		
		System.out.println("=====================");
		
		System.out.println("colors의 길이: "+colors.length);
		System.out.println("\nfor문 사용한 colors 출력");
		for(int i=0;i<colors.length;i++) {
			System.out.println("colors["+i+"] = "+colors[i]);
		}
		System.out.println("\nfor~each문 사용한 colors 출력");
		for(String b:colors) {
			System.out.println(b);
		}
		

	}

}
