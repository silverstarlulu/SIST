package day1228;

import java.util.Scanner;

public class Test_18 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		System.out.print("수령자명: ");
		String name=sc.nextLine();
		
		System.out.print("주문할 메뉴: ");
		String menu=sc.nextLine();
		
		System.out.println("메뉴 금액 3개를 입력해주세요. >>> ");
		int mon1=Integer.parseInt(sc.nextLine());
		int mon2=Integer.parseInt(sc.nextLine());
		int mon3=Integer.parseInt(sc.nextLine());
		
		System.out.print("배달 주소: ");
		String add=sc.nextLine();
	}

}
