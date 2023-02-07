package day0111;

import java.util.Date;

public class NullPointExcep_11 {

	Date date;	//new Date(); 안함
	
	public void write() {
		int y, m, d;
		try {
			y=date.getYear()-1900;
			m=date.getMonth()+1;
			d=date.getDate();
			
			System.out.println(y+"년 "+m+"월 "+d+"일 입니다.");
		} catch (NullPointerException e) {
			System.out.println("객체 생성을 안했음"+e.getMessage());
		}	
		
	}
	
	public static void main(String[] args) {
		NullPointExcep_11 ex=new NullPointExcep_11();
		ex.write();
		System.out.println("**정상종료**");
	}

}
