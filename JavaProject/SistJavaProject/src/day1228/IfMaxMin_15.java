package day1228;

import java.util.Scanner;

public class IfMaxMin_15 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		int x,y,max;
		
		System.out.print("두 수를 입력하세요 >>> ");
		x=sc.nextInt();
		y=sc.nextInt();
		
		max=x>y?x:y;
		
		System.out.println("=========================");
		System.out.println("입력한 수: "+x+", "+y);
		System.out.println("두 수 중 더 큰 값은 "+max);
		System.out.println("첫번째 수가 더 "+(x>y?"크다.":"작다"));

	}

}
