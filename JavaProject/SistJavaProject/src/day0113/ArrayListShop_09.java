package day0113;

import java.util.ArrayList;
import java.util.Scanner;

public class ArrayListShop_09 {
	ArrayList<Shop_09> list=new ArrayList<>();

	public void inputData() {
		Shop_09 shop=new Shop_09();
		Scanner sc=new Scanner(System.in);
		
		System.out.print("상품명? >>");
		String sangpum=sc.nextLine();
		System.out.print("수량? >>");
		int su=Integer.parseInt(sc.nextLine());
		System.out.print("단가? >>");
		int dan=Integer.parseInt(sc.nextLine());
		
		System.out.println();
		
		shop.setSangpum(sangpum);
		shop.setSu(su);
		shop.setDan(dan);
		
		list.add(shop);	
		
	}
	
	public void outputData() {
		System.out.println("**상품재고현황**");
		System.out.println("No.\t상품명\t수량\t단가\t총금액");
		System.out.println("============================================");
		int total=0;
		
		for(int i=0;i<list.size();i++) {
			Shop_09 s=list.get(i);
			
			System.out.println((i+1)+"\t"+s.getSangpum()+"\t"+s.getSu()+"\t"+s.getDan()+"\t"+(s.getSu()*s.getDan()));
			System.out.println("--------------------------------------------");
		}
	}
	
	public static void main(String[] args) {
		ArrayListShop_09 s=new ArrayListShop_09();
		Scanner sc=new Scanner(System.in);
		
		while(true) {
			System.out.println("1.추가 2.전체출력 9.종료");
			int n=Integer.parseInt(sc.nextLine());
			if(n==1)
				s.inputData();
			else if(n==2)
				s.outputData();
			else if(n==9) {
				System.out.println("프로그램 종료");
				break;
			}
			else
				System.out.println("재입력 바람");
		}
		

	}

}
