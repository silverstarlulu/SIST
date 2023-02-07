package day0103;

public class OrderChange_08 {

	public static void main(String[] args) {
		int a=10, b=20;
	
		System.out.println("a="+a+", b="+b);
		
		int temp=a;
		a=b;
		b=temp;
		System.out.println("a="+a+", b="+b);
		
		System.out.println("==================");
		
		int[] arr={5,7,2};
		for(int arr1:arr) {
			System.out.print(arr1);
		}
		
		System.out.println("\n\n0번지와 2번지 교환 후 출력");
		int tmp=arr[0];
		arr[0]=arr[2];
		arr[2]=tmp;
		
		for(int arr1:arr) {
			System.out.print(arr1);
		}
		
	}

}
