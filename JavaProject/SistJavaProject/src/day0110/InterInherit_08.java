package day0110;

abstract class Game{
	abstract void play();
	abstract void stop();
}

class Dohee extends Game{

	@Override
	void play() {	
		System.out.println("도희가 게임을 시작합니다.");
	}

	@Override
	void stop() {
		System.out.println("도희가 게임을 중단합니다.");
	}
	
}

class Hoon extends Game{

	@Override
	void play() {
		System.out.println("훈이가 게임을 시작합니다.");
	}

	@Override
	void stop() {	
		System.out.println("훈이가 게임을 중단합니다.");
	}
	
}

class YoungDon extends Game{

	@Override
	void play() {
		System.out.println("영돈이가 게임을 시작합니다.");
	}

	@Override
	void stop() {
		System.out.println("영돈이가 게임을 중단합니다.");
	}
	
}

public class InterInherit_08 {

	public static void main(String[] args) {
		Game [] stu=new Game[3];
		stu[0]=new Dohee();
		stu[1]=new Hoon();
		stu[2]=new YoungDon();
		
		for(int i=0;i<stu.length;i++) {
			stu[i].play();
		}
		
		System.out.println("========================");
		
		for(int i=stu.length-1;i>=0;i--) {
			stu[i].stop();
		}
		

	}

}
