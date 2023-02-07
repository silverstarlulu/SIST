package day1227;

public class quizCastArgs_13 {

	public static void main(String[] args) {
		
		String sangpum = args[0];
		int su  = Integer.parseInt(args[1]);
		int dan = Integer.parseInt(args[2]);
		int sum = su * dan;
		
		System.out.println("상품명 : " + sangpum);
		System.out.println("수량 : " + su + "개");
		System.out.println("단가: " + dan + "원");
		System.out.println("총금액: " + sum + "원");

	}

}
