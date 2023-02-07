package day1227;

import java.util.Calendar;

public class CalendarArgs_12 {

	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		
		int born = Integer.parseInt(args[1]);
		
		System.out.println("이름: " + args[0]);
		System.out.println("태어난 연도 : " + args[1]);
		System.out.printf("나이 : %d", cal.get(cal.YEAR) - born + 1);
		
		
		/*
		 //import
		 Calendar cal = Calendar.getInstance();
		 
		 //변수선언
		 int curYear = cal.get(cal.YEAR);
		 String name = args[0];
		 int myYear = Integer.parseInt(args[1]);
		 
		 //계산
		 int myAge = curYear - myYear + 1;
		 
		 //출력
		 System.out.println("이름: " + name);
		 System.out.println("태어난 연도 : " + myYear);
		 System.out.println("나이 : " + myAge);
		 */

	}

}
