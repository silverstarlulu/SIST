package day0102;

import java.util.Scanner;

public class RandomSuMatch_07 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int rnd=(int)(Math.random()*100+1);
		
		int input;
		int cnt=0;
		
		while(true) {
			
			cnt++;
			System.out.print(cnt+"회차 >>> ");
			input=sc.nextInt();
			
			if(input>rnd) {
				System.out.println("더 작은 숫자 입력하세요.");
			} else if(input<rnd) {
				System.out.println("더 큰 숫자 입력하세요.");
			} else {
				System.out.println(cnt+"회만에 정답");
				break;
			}
				
		}

	}

}
