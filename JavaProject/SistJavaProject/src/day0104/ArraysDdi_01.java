package day0104;

import java.util.Scanner;

public class ArraysDdi_01 {

	public static void main(String[] args) {
		String [] ddi= {"원숭이","닭","개","돼지","쥐","소",
						"호랑이","토끼","용","뱀","말","양"};
		
		Scanner sc=new Scanner(System.in);
		
		System.out.print("이름을 입력하세요 >>> ");
		String name=sc.nextLine();
		System.out.print("태어난 연도를 입력하세요 >>> ");
		int year=sc.nextInt();
		
		String myDdi=ddi[year%12];
		
		System.out.println(name+"님은 "+myDdi+"띠 입니다.");
	}

}
