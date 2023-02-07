package day0109_1;

import day0109.SuperObj_05;

class SubObj extends SuperObj_05{
	
	private String addr;
 	
	public SubObj(String name, int age, String addr) {
		super(name, age);
		this.addr=addr;
	}
	
	public void writeData() {
		System.out.println("이름: "+this.name);
		System.out.println("나이: "+this.age);
		System.out.println("주소: "+this.addr);
	}
}
	

public class Inheri_05 {

	public static void main(String[] args) {
		SubObj sub=new SubObj("박예은", 25, "경기도");
		sub.writeData();

	}

}
