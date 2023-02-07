package day0102;

public class ArrayTest_09 {

	public static void main(String[] args) {
		int [] arr1,arr2;
		arr1=new int[3];
		arr2=new int[5];
		
		arr1[0]=10;
		arr1[1]=20;
		arr1[2]=30;
		
		System.out.println("배열 arr1의 개수 : "+arr1.length);
		for(int i=0;i<arr1.length;i++) {
			System.out.println("arr1["+i+"] = "+arr1[i]);
		}
		
		//for~each 출력문
		for(int a1:arr1)
		{
			System.out.println(a1);
		}
		
		System.out.println("===================");
		
		System.out.println("배열 arr2의 개수 : "+arr2.length);
		for(int i=0;i<arr2.length;i++) {
			System.out.println("arr2["+i+"] = "+arr2[i]);
		}
		
		for(int a2:arr2) {
			System.out.println(a2);
		}

	}
}
