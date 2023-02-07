package day0110;

import java.util.Scanner;

interface Command{
	public void write();
}
	
class Insert implements Command{

	@Override
	public void write() {
		System.out.println("게시판에 게시물을 Insert합니다.");
	}
	
}

class Select implements Command{

	@Override
	public void write() {
		System.out.println("게시판에 게시물을 Select합니다.");
	}
	
}

class Update1 implements Command{

	@Override
	public void write() {
		System.out.println("게시판에 게시물을 Update합니다.");
	}
}

class Delete1 implements Command{

	@Override
	public void write() {
		System.out.println("게시판에 게시물을 Delete합니다.");
	}
	
}

public class QuizBoard_09 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		Command command=null;
		
		exit: while(true) {
			System.out.print("[메뉴]1.추가 2.수정 3.삭제 4.조회 5.종료 >>> ");
			int num=sc.nextInt();
			
			switch(num) {
			case 1:
				command=new Insert();
				break;
			case 2:
				command=new Update1();
				break;
			case 3:
				command=new Delete1();
				break;
			case 4:
				command=new Select();
				break;
			default:
				System.out.println("프로그램 종료");
				break exit;
			}
			
			command.write();
			System.out.println();
		}
	}

}
