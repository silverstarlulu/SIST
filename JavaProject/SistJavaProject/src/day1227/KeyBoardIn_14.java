package day1227;

import java.util.Scanner;

public class KeyBoardIn_14 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in); //스캐너 생성
		
		String name;
		int age;
		String city;
		
		System.out.print("이름을 입력해주세요~!~! ===> ");
		name = sc.nextLine();	//한 줄을 문자로 읽어옴(공백 사용가능)
		System.out.print("당신의 나이를 입력해주세요~!~! ===> ");
		//age = sc.nextInt();		//숫자형태로 읽어옴
		//숫자 입력 후 엔터 누르면 그 엔터가 키보드 버퍼로 저장되어서 그 다음 문자열 읽을 때 먼저 읽어버리는 현상 발생
		//다음문자열 읽기전에 엔터를 읽어서 없애기
		age = Integer.parseInt(sc.nextLine());	//숫자 다음 문자쓸때 쓸 공간이 없으므로 
												//string -> int 숫자형태로 읽을 수 있도록 라인이 내려가므로 
												//버퍼가 내려가지 않음 숫자가 마지막이면 굳이 이렇게 쓸 필요 x
		System.out.print("사는 지역을 입력해주세요~!~! ===> ");
		city = sc.nextLine();	//문자 쓸 때
		
		System.out.println(" ============================================ ");
		System.out.println(name+ "님의 나이는 " + age + "살이며 사는지역은 " + city + "입니다.");
		
		
	}

}
