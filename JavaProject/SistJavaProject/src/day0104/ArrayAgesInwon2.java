package day0104;

import java.util.Scanner;

public class ArrayAgesInwon2 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] ages=new int[10];
		int[] inwon=new int[9];
		
		for(int i=0;i<ages.length;i++) {
			System.out.print("나이 입력 > ");
			ages[i]=sc.nextInt();
			inwon[ages[i]/10-1]++;
		}
		
		for(int i=0;i<ages.length;i++) {
			System.out.print(ages[i]+" ");
		}
		
		System.out.println();
		
		for(int i=0;i<inwon.length;i++) {
			System.out.printf("%2d대:%2d명 / ",(i+1)*10,inwon[i]);
		}
		

	}

}
