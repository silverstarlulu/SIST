package day1229;

import java.util.Scanner;

public class ScanGuguDan_13 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int dan;
		
		while(true) {
			System.out.print("2~9단 중 선택하세요(종료:0) >>> ");
			dan=sc.nextInt();
			
			if(dan==0) {
				System.out.println("구구단 종료");
				break;
			}
			
			if(dan<2||dan>9) {
				System.out.println("\n범위에 맞는 숫자를 입력하세요.");
				continue;
			}
			
			System.out.println("\n**"+dan+"단 시작**");
			for(int su=1;su<=9;su++) {
				System.out.printf("%d x %d = %2d\n",dan,su,dan*su);
			}
			System.out.println();
	
		}

	}

}
