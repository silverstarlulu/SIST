package day0110;

public class Food_04 implements FoodShop_04 {

	@Override
	public void order() {
		System.out.println(SHOPNAME);
		//SHOPNAME="돈까스집";				//상수라서 변경 불가
		System.out.println("음식 주문");
	}

	@Override
	public void baedal() {
		System.out.println(SHOPNAME);
		System.out.println("배달 시작");	
	}
	
}
