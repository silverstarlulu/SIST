package day0110;

import java.util.Scanner;

//super
abstract class Board{
	abstract public void process();
}

//sub
class List extends Board{

	@Override
	public void process() {
		System.out.println("게시판의 전체글 출력");
	}
	
}

class Write extends Board {

	@Override
	public void process() {
		System.out.println("게시판의 글을 쓰고 저장");
	}
	
}

class Update extends Board{

	@Override
	public void process() {
		System.out.println("게시판의 글 수정");
	}
	
}

class Delete extends Board{

	@Override
	public void process() {
		System.out.println("게시판의 글 삭제");
	}
	
}

public class BoardInherit_03 {
	public static void main(String[] args) {
		//Board board=new Board();	//불가능 추상클래스는 new로 객체생성 x
		Scanner sc=new Scanner(System.in);
		int num;
		Board board=null;
		
		
		while(true) {
			System.out.println("1.쓰기 2.글출력 3.수정 4.삭제 5.종료");
			num=sc.nextInt();
			switch(num) {
			case 1: 
				board=new Write();
				break;
			case 2: 
				board=new List();
				break;
			case 3: 
				board=new Update();
				break;
			case 4: 
				board=new Delete();
				break;
			default: 
				System.out.println("Board 프로그램 종료");
				System.exit(0);		//강제종료
			}
			
			//하나의 변수로 오버라이딩 된 메서드 호출
			board.process();
		}
	}

}
