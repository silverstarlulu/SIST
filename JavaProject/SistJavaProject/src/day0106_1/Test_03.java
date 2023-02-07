package day0106_1;

/*다른패키지에서 클래스 만들경우(생성자 포함) 접근지정자에 따른 오류*/

public class Test_03 {
	private Test_03() {
		System.out.println("디폴트 생성자");
	}
	
	//생성자 대신 인스턴스를 반환해주는 메서드
	public static Test_03 getInstance() {	//반환값이 Test_03
		return new Test_03();
	}
	
	
	public void writeMessage() {
		System.out.println("안녕하세영");
	}
	
}
