package day0103;

public class ArrayTest_01 {

	public static void main(String[] args) {
		//선언 및 할당
		int [] arr1=new int[5];
		//초기화
		arr1[1]=10;
		arr1[4]=34;
		
		for(int i=0;i<arr1.length;i++) {
			System.out.println(arr1[i]);
		}
		
		System.out.println("====");
		
		for(int a:arr1) {
			System.out.println(a);
		}
		
		System.out.println("====");
		
		//선언 동시에 초기화
		int [] arr2= {23,11,44,55,88,99,100};
		
		System.out.println("arr2 길이: "+arr2.length);
		for(int i=0;i<arr2.length;i++) {
			System.out.printf("%5d",arr2[i]);
		}
		
		System.out.println("====");
		
		for(int a2:arr2) {
			System.out.printf("%5d",a2);
		}

	}

}
