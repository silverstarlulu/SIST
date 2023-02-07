package day1229;

public class ForTest_07 {

	public static void main(String[] args) {
		for(int i=1;i<=10;i++) {
			if(i%3==0) continue;
			//break; //반복문 탈출  1, 2만 출력
			System.out.print(i+" ");
		}
		System.out.println();
	
		for(int i=1;i<=10;i++) {
			if(i%2==0) continue;
			System.out.println("홀수값: "+i);
		}
	}

}
