package day0103;

import java.util.Scanner;

public class ScanArray_02 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] data;
		data = new int[5];
		int sum=0;
		
		for(int i=0;i<data.length;i++) {
			System.out.print(i+"번지값을 입력하세요. >>> ");
			data[i]=sc.nextInt();
		}
		
		System.out.println("====================");
		
		for(int i=0;i<data.length;i++) {
			System.out.println("data["+i+"] = "+data[i]);
			sum+=data[i];
		}
		
		System.out.println("총합계: "+sum);
	}

}
