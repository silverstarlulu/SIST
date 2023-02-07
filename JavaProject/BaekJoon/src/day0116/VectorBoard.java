package day0116;

import java.util.List;
import java.util.Scanner;
import java.util.Vector;

class Board{
	private String writer;
	private String subject;
	private String content;
	
	public Board(String w,String s,String c) {
		this.writer=w;
		this.subject=s;
		this.content=c;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}

public class VectorBoard {
	List<Board> list=new Vector<>();
	Scanner sc=new Scanner(System.in);
	
	public void inputData() {
		System.out.print("작성자명: ");
		String name=sc.nextLine();
		System.out.print("제목: ");
		String sub=sc.nextLine();
		System.out.print("내용: ");
		String con=sc.nextLine();
		
		list.add(new Board(name, sub, con));
		
		System.out.println("현재 데이터 개수: "+list.size()+"개");
	}
	
	public void outputData() {
		System.out.println("**게시판**");
		System.out.println("=========================================");
		
		for(int i=0;i<list.size();i++) {
			Board data=list.get(i);
			
			System.out.println("No."+(i+1)+"\t작성자: "+data.getWriter());
			System.out.println("제목: "+data.getSubject());
			System.out.println("내용: "+data.getContent());
			System.out.println("==============================================");
		}
	}
	
	public static void main(String[] args) {
		VectorBoard vb=new VectorBoard();
		Scanner sc=new Scanner(System.in);
		
		while(true) {
			System.out.println("1.추가 2.전체출력 9.종료");
			int num=Integer.parseInt(sc.nextLine());
			
			switch(num) {
			case 1:
				vb.inputData();
				break;
			case 2:
				vb.outputData();
				break;
			case 9:
				System.out.println("프로그램 종료");
				System.exit(0);
			default:
				System.out.println("재입력 바람");
			}
		}

	}

}
