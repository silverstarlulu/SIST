package day0111;

import java.util.Scanner;

/*throws_ 호출한 영역으로 예외처리 던짐
 *throw_ 강제로 예외 발생*/
public class Exception_14 {
	
	public static void scoreInput() throws Exception {
		
		Scanner sc=new Scanner(System.in);
		
		int score=0;
		
		//점수가 0~100이 아니라면 exception 강제 발생
		System.out.println("점수를 입력하세요");
		score=sc.nextInt();
		
		if(score<=0 || score>100) {
			throw new Exception("잘못된 점수!");
		} else {
			System.out.println("나의 점수는 "+score+"랍니다~");
		}
	}

	public static void main(String[] args) {
		/*
		System.out.println("안녕하세요.....");
		System.out.println("3초뒤 헤어집시다..");
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		System.out.println("안녕히 계세요..");
		*/
		
		try {
			scoreInput();
		} catch (Exception e) {
			//e.printStackTrace();
			System.out.println("오류메시지: "+e.getMessage());
		}
		System.out.println("정상 종료");
	}

}
