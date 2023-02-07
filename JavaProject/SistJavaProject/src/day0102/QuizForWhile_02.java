package day0102;

import java.util.Scanner;

public class QuizForWhile_02 {

	public static void quiz1() {
		Scanner sc=new Scanner(System.in);
		int x,y;
		int result=1;
		
		System.out.print("숫자를 입력하세요 >>> ");
		x=sc.nextInt();
		y=sc.nextInt();
		
		for(int i=1;i<=y;i++) {
			result*=x;
		}
		
		System.out.println(x+"의 "+y+"승은 "+result+"입니다.");
		
	}
	
	public static void quiz2() {
		Scanner sc=new Scanner(System.in);
		int x;
		int result=1;
		
		System.out.print("숫자를 입력하세요 >>> ");
		x=sc.nextInt();
		
		for(int i=x;i>=1;i--) {
			result*=i;
		}
		
		System.out.println(x+"!="+result);
		
	}

	public static void quiz3() {
		for(int i=1;i<=3;i++) {
			System.out.println(i+". Hello");
			System.out.print("\t");
			for(int j=1;j<=4;j++) {
				System.out.print(j+":Java ");
			}
			System.out.println();
		}
	
	}
	
	public static void main(String[] args) {
		//quiz1();
		//quiz2();
		quiz3();
	}

}
