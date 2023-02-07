package day1227;

import java.util.Calendar;
import java.util.Scanner;

public class ScannerMyAge_15 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Calendar cal = Calendar.getInstance();
		
		String name;
		int myYear, age;
		int curYear = cal.get(cal.YEAR);
		
		System.out.print("당신의 이름은? ===> ");
		name = sc.nextLine();
		
		System.out.print("당신이 태어난 년도는? ===> ");
		//myYear = sc.nextInt();
		myYear = Integer.parseInt(sc.nextLine());
		
		age = curYear - myYear + 1;
		
		System.out.println(name + "님은 " + myYear + "년에 태어나셨으니까 "+ age + "살 인 것 같아용!");
		
	}

}
