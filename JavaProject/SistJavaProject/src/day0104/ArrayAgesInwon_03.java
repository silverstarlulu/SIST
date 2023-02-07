package day0104;

import java.util.Scanner;

public class ArrayAgesInwon_03 {

	public static void main(String[] args) {
		//총 10명의 나이를 입력받아서 나이분포도를 출력
		int ages[]=new int[10];
		int inwon[]=new int[5];
		
		Scanner sc=new Scanner(System.in);
		for(int i=0;i<ages.length;i++) {
			System.out.print("나이 입력 >>> ");
			ages[i]=sc.nextInt();
			
			if(ages[i]<10||ages[i]>=60) continue;
			
			inwon[ages[i]/10-1]++;
		}
		
		System.out.println();
		
		System.out.println("****입력한 나이****");
		for(int i=0;i<ages.length;i++) {
			System.out.printf("%3d",ages[i]);
			if((i+1)%5==0) System.out.println();
		}
		
		System.out.println();
		System.out.println();
		
		System.out.println("*************연령별 나이분포도*************");
		for(int i=0;i<inwon.length;i++) {
			System.out.print((i+1)*10+"대:"+inwon[i]+"명 ");
		}
	}

}
