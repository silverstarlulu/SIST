package day0110;

public class FruitInherit_02 {

	public static void main(String[] args) {
		/*
		Apple_02 apple=new Apple_02();
		Banana_02 banana=new Banana_02();
		Orange_02 orange=new Orange_02();
		Kiwi_02 kiwi=new Kiwi_02();
		
		apple.showMessage();
		banana.showMessage();
		orange.showMessage();
		kiwi.showMessage();
		*/
		
		//다형성
		//하나의 변수로 사용하고자 하는 목적
		//하위클래스로 생성
		Fruit_02 fruit;
		fruit=new Apple_02();
		fruit.showMessage();
		fruit.showTitle();
		
		fruit=new Banana_02();
		fruit.showMessage();
		
		fruit=new Orange_02();
		fruit.showMessage();
		
		fruit=new Kiwi_02();
		fruit.showMessage();
	}

}
