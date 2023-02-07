package day0110;

interface InterAA{
	public void order();
}

interface InterBB{
	public void baedal();
	public void pungga();
}

class InterImpl2 implements InterAA,InterBB{

	@Override
	public void baedal() {
		System.out.println("배달 중");
	}

	@Override
	public void pungga() {
		System.out.println("평가 중");
	}

	@Override
	public void order() {
		System.out.println("주문 중");
	}
	
}

public class QuizInter_06 {

	public static void main(String[] args) {
		//객체생성
		InterImpl2 impl=new InterImpl2();
		impl.order();
		impl.baedal();
		impl.pungga();
		
		System.out.println("======");
		
		//다형성
		InterAA inA=new InterImpl2();
		inA.order();
		
		InterBB inB=new InterImpl2();
		inB.baedal();
		inB.pungga();
	}

}
