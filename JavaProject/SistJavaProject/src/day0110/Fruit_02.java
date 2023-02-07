package day0110;

//super
abstract public class Fruit_02 {
	
	//상수 선언 final
	public static final String MESSAGE="THESE ARE FRUIT MESSAGES";
	
	//일반메서드
	public void showTitle(){
		System.out.println("추상클래스 공부중이랍니당");
	}
	
	//추상메서드
	abstract public void showMessage();
}