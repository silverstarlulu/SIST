package day0103;

import java.util.Scanner;

public class LottoProgramPractice {

	public static void main(String[] args) {
		//난수 발생 원하는만큼
		
		Scanner sc=new Scanner(System.in);
		int pay, jang;
		
		while(true) {
			System.out.print("금액 입력 >>> ");
			pay=sc.nextInt();
			
			if(pay>=1000) {
				jang=pay/1000;
				break;
			} else
				System.out.println("금액 부족\n");	
		}

		for(int i=0;i<jang;i++) {
			System.out.print("\n"+(i+1)+"회:");
			int[] lotto=new int[6];
			for(int j=0;j<lotto.length;j++) {
				lotto[j]=(int)(Math.random()*45)+1;
			
				for(int k=0;k<j;k++) {
					if(lotto[j]==lotto[k]) {
						j--;
						break;
					}
				}
			}
			
			for(int j=0;j<lotto.length-1;j++) {
				for(int k=j+1;k<lotto.length;k++) {
					if(lotto[j]>lotto[k]) {
						int temp=lotto[j];
						lotto[j]=lotto[k];
						lotto[k]=temp;
					}
				}
			}
		
			for(int j=0;j<lotto.length;j++) {
				System.out.printf("%3d",lotto[j]);
			}
		}
	}

}
