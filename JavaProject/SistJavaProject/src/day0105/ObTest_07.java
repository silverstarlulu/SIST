package day0105;

class ObTestA{
	private int x;
	private static int y;
	
	//private이면 메서드로 접근가능, 생성을 해도 참조변수로 변수에 접근x
	
	
	//인스턴스멤버메서드(멤버수정&출력메서드)
	//멤버수정메서드
	public void setX(int xx) {
		//this.x=xx;
		x=xx;	//이름 틀릴 땐 this 생략가능
	}
	
	//멤버출력메서드
	public void getX() {
		System.out.println("x="+this.x);
	}
	
	
	//static은 this를 가지고 있지 x
	//일반멤버면수 호출 x, static 변수만 호출 o 
	public static void setY(int yy) {
		ObTestA.y=yy;
		
	}
	
	public static void getY() {
		System.out.println("y="+ObTestA.y);
	}
}

public class ObTest_07 {

	public static void main(String[] args) {
		//x
		ObTestA ta1=new ObTestA();
		ta1.setX(10);
		ta1.getX();
		
		ObTestA ta2=new ObTestA();
		ta2.setX(100);
		ta2.getX();
		
		//y
		ObTestA.setY(200);
		ObTestA.getY();
	
	}

}






