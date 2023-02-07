package day0105;

public class CardMain_02 {

	public static void main(String[] args) {
		
		System.out.println(CardTest_02.width);
		System.out.println(CardTest_02.height);
		
		CardTest_02.width=10;
		CardTest_02.height=20;
		
		System.out.println(CardTest_02.width);
		System.out.println(CardTest_02.height);
		
		//인스턴스 변수 생성
		CardTest_02 c1=new CardTest_02();
		System.out.println(c1.kind);
		System.out.println(c1.number);
		
		c1.kind="Heart";
		c1.number=7;
		
		System.out.println(c1.kind);
		System.out.println(c1.number);
		
		CardTest_02 c2=new CardTest_02();
		c2.kind="Spade";
		c2.number=4;
		
		System.out.println(c2.kind);
		System.out.println(c2.number);
		
		System.out.println(c1.kind+","+c1.number+"("
							+CardTest_02.width+"x"+CardTest_02.height+")");

	}

}
