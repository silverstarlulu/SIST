package day0103;

//import java.util.Arrays;

public class OrderChangeArray_09 {

	public static void main(String[] args) {
		int[] arr= {5,6,7,3,4,9,7,66,78,33,12};
		int temp;
		
		for(int i=0;i<arr.length;i++) {
			System.out.print(arr[i]+" ");
		}
		
		System.out.println("\n=====데이터 거꾸로 변경 시=====");
		
		for(int i=0;i<arr.length/2;i++) {
			temp=arr[i];
			arr[i]=arr[arr.length-i-1];
			arr[arr.length-i-1]=temp;
		}
		
		for(int i=0;i<arr.length;i++) {
			System.out.print(arr[i]+" ");
		}
		
		System.out.println("\n======오름차순으로 재정렬======");
		//Arrays.sort(arr);
		
		//기준 데이터는 0~끝에서 두번째까지
		for(int i=0;i<arr.length-1;i++) {
			//비교 데이터는 기준 다음 값~끝까지
			for(int j=i+1;j<arr.length;j++) {
				if(arr[i]>arr[j]) {
					int tmp=arr[i];
					arr[i]=arr[j];
					arr[j]=tmp;
				}
				
			}
		}

		for(int i=0;i<arr.length;i++) {
			System.out.print(arr[i]+" ");
		}
	}

}
