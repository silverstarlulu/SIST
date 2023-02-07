package day0105;

class Apple{
	public Apple() {
		System.out.println("Apple_default 생성자 호출");
	}
}

class Banana{
	public Banana(String str) {
		System.out.println("Banana_생성자 호출: "+str);
	}
}

class Orange{
	public Orange() {
		System.out.println("Orange_default 생성자 호출");
	}
	
	public Orange(String str) {
		System.out.println("Orange_생성자2 호출: "+str);
	}
	
	public Orange(int n) {
		this();	//기본생성자 호출, 반드시 첫줄에 작성
		System.out.println("Orange_생성자3 호출: "+n);
	}
}

public class ObTestConst_08 {

	public static void main(String[] args) {
		
		Apple ap=new Apple();
		//Banana ba=new Banana();	//기본 생성자 없으니까 에러남
		Banana ba=new Banana("banana");
		Orange or1=new Orange();
		Orange or2=new Orange("Orange2");
		Orange or3=new Orange(3);
		

	}

}
