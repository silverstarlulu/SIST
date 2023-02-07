package day1228;

import java.util.Scanner;

public class KeyBoardIn_01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String name;
		int kor, eng, mat;
		int sum;
		double avg;
		
		System.out.print("당신의 이름은? >> ");
		name = sc.nextLine();
		
		System.out.print("당신의 국어성적은? >> ");
		kor = sc.nextInt();
		System.out.print("당신의 영어성적은? >> ");
		eng = sc.nextInt();
		System.out.print("당신의 수학성적은? >> ");
		mat = sc.nextInt();
		
		sum = kor + eng + mat;
		avg = sum / 3.0;
		
		System.out.println("================================");
		System.out.println("국어 : " + kor + "점, 영어 : " + eng + "점, 수학 : " + mat +"점");
		System.out.println(name + "님 성적의 총합은 " + sum + "점");
		System.out.println(name + "님 성적의 평균은 " + avg + "점");
		
		

	}

}
