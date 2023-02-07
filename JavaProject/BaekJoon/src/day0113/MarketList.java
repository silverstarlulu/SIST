package day0113;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Market{
	private String name;
	private int dan;
	private int su;
	private int total;
	
	public Market(String n,int d,int s) {
		this.name=n;
		this.dan=d;
		this.su=s;
		this.total=d*s;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
}

public class MarketList {
	static final String FILENAME="C:\\sist1226\\file\\market_list.txt";
	List<Market> list=new ArrayList<>();
	Scanner sc=new Scanner(System.in);
	
	public MarketList() {
		marketRead();
	}
	
	public void marketWrite() {
		FileWriter fw=null;
		
		try {
			fw=new FileWriter(FILENAME);
			
			for(Market market:list) {
				String s=market.getName()+","+market.getDan()+","+market.getSu()+"\n";
				fw.write(s);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void marketRead() {
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(FILENAME);
			br=new BufferedReader(fr);
			
			while(true) {
				String market=br.readLine();
				
				if(market==null) break;
				
				String [] data=market.split(",");
				
				String name=data[0];
				int dan=Integer.parseInt(data[1]);
				int su=Integer.parseInt(data[2]);
				int total=dan*su;
				
				Market m=new Market(name, dan, su);
				
				list.add(m);
			}
			
			System.out.println("총 "+list.size()+"개의 상품목록을 가져옴");
		
		} catch (FileNotFoundException e) {
			System.out.println("<저장된 상품이 없음>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void marketAdd() {
		System.out.print("상품명 >> ");
		String name=sc.nextLine();
		System.out.print("단가 >> ");
		int dan=Integer.parseInt(sc.nextLine());
		System.out.print("수량 >> ");
		int su=Integer.parseInt(sc.nextLine());
		
		Market m=new Market(name, dan, su);
		
		list.add(m);
		System.out.println("상품정보 추가완료");
	}
	
	public void writeData() {
		if(list.size()==0) {
			System.out.println("출력할 상품이 없음");
			return;
		}
		
		System.out.println("**상품정보**");
		System.out.println("번호\t상품\t단가\t수량\t총금액");
		System.out.println("------------------------------------");
		
		for(int i=0;i<list.size();i++) {
			Market m=list.get(i);
			
			System.out.println((i+1)+"\t"+m.getName()+"\t"+m.getDan()+"\t"+m.getSu()+"\t"+m.getTotal()+"\n");
		}
	}
	
	public void process() {
		
		while(true) {
			System.out.println("1.상품추가 2.상품출력 9.종료");
			int num=Integer.parseInt(sc.nextLine());
			
			switch(num) {
			case 1:
				marketAdd();
				break;
			case 2:
				writeData();
				break;
			case 9:
				System.out.println("저장 후 프로그램 종료");
				marketWrite();
				System.exit(0);
			default:
				System.out.println("재입력 바람");
			}
		}
	}
	
	public static void main(String[] args) {
		MarketList ml=new MarketList();
		ml.process();

	}

}
