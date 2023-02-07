package day0105;

class Numb{
	int num;	//0
	
	//디폴트 생성자(인자없는 생성자)
	public Numb() {
		System.out.println("~~default 생성자 호출~~");
	}
	
	//인자있는 생성자
	public Numb(int num) {
		this.num=num;
		System.out.println("~~인자있는 생성자 호출~~");
	}
	
	//메서드
	public int getNumber(){
		num=50;
		return num;
	}
}

public class ConstTest_06 {

	public static void main(String[] args) {
		Numb num1=new Numb();
		System.out.println(num1.num);
		
		Numb num2=new Numb(30);
		System.out.println(num2.num);
		
		Numb num3=new Numb();
		System.out.println(num3.getNumber());
		
	}

}
