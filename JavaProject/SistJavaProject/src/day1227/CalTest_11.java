package day1227;
import java.util.Calendar;
//import java.util.Date;

public class CalTest_11 {

	public static void main(String[] args) {
		/*
		Date date = new Date();
		System.out.println("지금은 " + (date.getYear()+1900) + "년도 입니다.");
		*/
		
		Calendar cal = Calendar.getInstance();
		
		System.out.println("지금은 " + cal.get(cal.YEAR) + "년도 입니다.");
		System.out.println("지금은 " + (cal.get(cal.MONTH)+1) + "월 입니다.");
		System.out.println("지금은 " + cal.get(cal.DATE) + "일 입니다.");
		System.out.println("지금은 " + cal.get(cal.DAY_OF_MONTH) + "일 입니다.");
		System.out.println("시간: " + cal.get(cal.HOUR) + "시 " + cal.get(cal.MINUTE) + "분");
		System.out.println("시간: " + cal.get(cal.HOUR_OF_DAY) + "시 " + cal.get(cal.MINUTE) + "분");
	}

}
