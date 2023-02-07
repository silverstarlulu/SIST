package day0110;

public class Apple_02 extends Fruit_02 {

	@Override
	public void showMessage() {
		System.out.println(Fruit_02.MESSAGE);		//Fruit 생략 o
		System.out.println("Apple_ShowMessage");
			
	}
	
}
