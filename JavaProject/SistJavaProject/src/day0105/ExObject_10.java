package day0105;

public class ExObject_10 {
	private String sangpum;
	int su;
	int dan;
	
	static String SHOPNAME="이마트";

	public static void main(String[] args) {
		ExObject_10 ex=new ExObject_10();
		ex.sangpum="텀블러";
		ex.su=10;
		ex.dan=3000;
		
		System.out.println("상점명: "+SHOPNAME);
		System.out.println("상품명: "+ex.sangpum);
		System.out.println("수량: "+ex.su);
		System.out.println("단가: "+ex.dan);
		System.out.println("총금액: "+ex.su*ex.dan);
	}

}
