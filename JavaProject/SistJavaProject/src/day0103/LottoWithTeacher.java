package day0103;

import java.util.Scanner;

public class LottoWithTeacher {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] lotto=new int[6];
		int money;	
		
		System.out.println("로또 구입금액을 입력해주세요");
		money=sc.nextInt();
		
		if(money<1000) {
			System.out.println("**금액이 부족합니다**");
			return;
		}
		
		for(int n=0;n<money/1000;n++) {
			System.out.printf("%2d회:",n+1);
			
			//임의의 수를 로또변수에 발생시켜 넣어준다
			for(int i=0;i<lotto.length;i++) {
				lotto[i]=(int)(Math.random()*45)+1;
				
				//중복처리
				for(int j=0;j<i;j++) {
					if(lotto[i]==lotto[j]) {
						i--;
						break;
					}
				}
				
			}
			
			//오름차순
			for(int i=0;i<lotto.length-1;i++) {
				for(int j=i+1;j<lotto.length;j++) {
					if(lotto[i]>lotto[j]) {
						int temp=lotto[i];
						lotto[i]=lotto[j];
						lotto[j]=temp;
					}
				}
			}
			
			//출력
			for(int i=0;i<lotto.length;i++) {
				System.out.printf("%5d",lotto[i]);
			}
			System.out.println();
		}

	}

}
