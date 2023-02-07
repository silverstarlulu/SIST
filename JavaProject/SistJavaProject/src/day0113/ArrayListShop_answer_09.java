package day0113;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ArrayListShop_answer_09 {

	List<Shop_answer_09> list=new ArrayList<>();
	
	public void ipgo() {
		Scanner sc=new Scanner(System.in);
		
		String sang;
		int su,dan;
		
		System.out.print("상품명?");
		sang=sc.nextLine();
		System.out.print("가격은?");
		dan=Integer.parseInt(sc.nextLine());
		System.out.print("수량은?");
		su=Integer.parseInt(sc.nextLine());
		
		Shop_answer_09 shop=new Shop_answer_09();
		shop.setSangpum(sang);
		shop.setDan(dan);
		shop.setSu(su);
		
		list.add(shop);
		
		System.out.println("현재 상품 입고: "+list.size()+"개");
		
	}
	
	public void jego() {
		System.out.println("**상품재고현황**");
		System.out.println("-----------------------------------------");
		System.out.println("No.\t상품명\t상품가격\t수량\t총액");
		System.out.println("=========================================");
		
		for(int i=0;i<list.size();i++) {
			Shop_answer_09 s=list.get(i);
			
			System.out.println(i+1+"\t"+s.getSangpum()+"\t"+s.getDan()+"\t"+s.getSu()+"\t"+s.getTotal());
			System.out.println("-----------------------------------------");
		}
	}
	
	public static void main(String[] args) {
		ArrayListShop_answer_09 answer=new ArrayListShop_answer_09();
		Scanner sc=new Scanner(System.in);
		int s;
		
		while(true) {
			System.out.println("1.상품입고 2.상품재고 9.종료");
			s=Integer.parseInt(sc.nextLine());
			if(s==1)
				answer.ipgo();
			else if(s==2)
				answer.jego();
			else if(s==9) {
				System.out.println("프로그램 종료");
				break;
			}
			else
				System.out.println("재입력 바람");
		}

	}

}
