package day0106;

public class MyDateMain_02 {

	public static void main(String[] args) {
		MyDate_02 date=new MyDate_02(2023,12,25);
		
		/*
		date.setYear(2023);
		date.setMonth(5);
		date.setDay(8);
		*/
		
		System.out.println(date.getYear());
		System.out.println(date.getMonth());
		System.out.println(date.getDay());

	}

}
