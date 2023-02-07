package day0110;

interface InterA{
	public void write();
	public void draw();
}

interface InterB extends InterA{
	public void play();
}

class InterImpl implements InterB{

	@Override
	public void write() {
		System.out.println("숙제 중");
		
	}

	@Override
	public void draw() {
		System.out.println("그림 그리는 중");
		
	}

	@Override
	public void play() {
		System.out.println("노는 중");
		
	}

	
}

public class InterfaceImple_05 {

	public static void main(String[] args) {
		//서브클래스 이용하여 객체 생성
		InterImpl inter1=new InterImpl();
		inter1.write();
		inter1.draw();
		inter1.play();
		
		System.out.println("---------------------------");
		
		//다형성으로 호촐
		InterA inA=new InterImpl();
		inA.write();
		inA.draw();
		
		InterB inB=new InterImpl();
		inB.play();

	}

}
