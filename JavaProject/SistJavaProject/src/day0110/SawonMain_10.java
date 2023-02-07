package day0110;

import java.util.Scanner;

public class SawonMain_10 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		System.out.print("사원명은? >>> ");
		String sawonName=sc.nextLine();
		System.out.print("기본급여는? >>> ");
		int gibonPay=sc.nextInt();
		System.out.print("가족수는? >>> ");
		int familySu=sc.nextInt();
		System.out.print("초과근무시간은? >>> ");
		int timeSu=sc.nextInt();
		
		Sawon_10 sawon=new Sawon_10(sawonName,gibonPay,familySu,timeSu);
		sawon.writeData();

	}

}
