package day0105;

public class MyCar_13 {
	private String carName;
	private int price;
	private String color;
	
	public MyCar_13() {
		this.carName="그랜져";
		this.price=4000;
		this.color="진주색";
	}
	
	public void setter(String carName,int price,String color) {
		this.carName=carName;
		this.price=price;
		this.color=color;
	}
	
	public String getterN() {
		return carName;
	}
	
	public int getterP() {
		return price;
	}
	
	public String getterC() {
		return color;
	}
	
	public void write() {
		System.out.println("자동차명: "+getterN());
		System.out.println("차량가격: "+getterP());
		System.out.println("차량색상: "+getterC());
	}
}
