package day1228;

import java.util.Calendar;
import java.util.Scanner;

public class ScanMyYearDdi_08 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Calendar cal = Calendar.getInstance();
		
		int myYear, age;
		String name, ddi;
		
		System.out.print("이름입력 : ");
		name = sc.nextLine();
		System.out.print("태어난 연도 입력 : ");
		myYear = sc.nextInt();
		
		age = cal.get(cal.YEAR) - myYear +1;
		
		ddi =	myYear%12 == 0 ? "원숭이" :
					myYear%12 == 1 ? "닭" :
						myYear%12 == 2 ? "개" :
							myYear%12 == 3 ? "돼지" :
								myYear%12 == 4 ? "쥐" :
									myYear%12 == 5 ? "소" :
										myYear%12 == 6 ? "호랑이" :
											myYear%12 == 7 ? "토끼" :
												myYear%12 == 8 ? "용" :
													myYear%12 == 9 ? "뱀" :
														myYear%12 == 10 ? "말" : "양";
				
										
		System.out.println(name + "님의 나이는 " + age +"살이며 띠는 " + ddi + "띠 입니다");

	}

}
