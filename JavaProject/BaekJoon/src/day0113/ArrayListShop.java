package day0113;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Shop{
	private String sangpum;
	private int dan;
	private int su;
	
	public String getSangpum() {
		return sangpum;
	}
	public void setSangpum(String sangpum) {
		this.sangpum = sangpum;
	}
	public int getDan() {
		return dan;
	}
	public void setDan(int dan) {
		this.dan = dan;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	
	public int getTotal() {
		return dan*su; 
	}

}

public class ArrayListShop {
	List<Shop> list=new ArrayList<>();
	Scanner sc=new Scanner(System.in);
	
	public void inputData() {
		
		Shop shop=new Shop();
		
		System.out.print("상품명 >> ");
		String n=sc.nextLine();
		System.out.print("가격 >> ");
		int d=Integer.parseInt(sc.nextLine());
		System.out.print("수량 >> ");
		int s=Integer.parseInt(sc.nextLine());
		
		shop.setSangpum(n);
		shop.setDan(d);
		shop.setSu(s);
		
		list.add(shop);
		
		System.out.println("현재 상품 입고: "+list.size()+"개");
		System.out.println();
	}
	
	public void writeData() {
		
		System.out.println("**상품재고현황**");
		System.out.println("No.\t상풍명\t상품가격\t수량\t총액");
		System.out.println("==========================================");
		
		for(int i=0;i<list.size();i++) {
			Shop data=list.get(i);
			System.out.println((i+1)+"\t"+data.getSangpum()+"\t"+data.getDan()
								+"\t"+data.getSu()+"\t"+data.getTotal());
			System.out.println("------------------------------------------");
			System.out.println();
		}
		
	}
	
	public static void main(String[] args) {
		ArrayListShop al=new ArrayListShop();
		Scanner sc=new Scanner(System.in);
		
		while(true) {
			System.out.println("1.상품입고 2.상품재고 9.종료");
			int num=Integer.parseInt(sc.nextLine());
			
			switch(num) {
			case 1:
				al.inputData();
				break;
			case 2:
				al.writeData();
				break;
			case 9:
				System.out.println("프로그램 종료");
				System.exit(0);
			default:
				System.out.println("재입력하세요");
				System.out.println();
			}
		}

	}

}
