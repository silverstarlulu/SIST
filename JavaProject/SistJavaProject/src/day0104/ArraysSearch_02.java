package day0104;

import java.util.Scanner;

public class ArraysSearch_02 {

	public static void main(String[] args) {
		int [] arr= {1,3,2,33,674,66,89,5,35,68};
		Scanner sc=new Scanner(System.in);
		int input;
		boolean flag;
		
		while(true) {
			System.out.print("값을 입력하세요 >>> ");
			input=sc.nextInt();
			
			if(input==0) {
				System.out.println("\n프로그램 종료할래요'^'");
				break;
			}
			
			flag=false;
			
			for(int i=0;i<arr.length;i++) {
				if(arr[i]==input) {
					System.out.println(input+"은 "+(i+1)+"번째에 있어용>_<\n");
					flag=true;
				}
				
			}
			
			if(!flag) {
				System.out.println(input+"은 없어요~!\n");
			}
		}
	
	}
}
