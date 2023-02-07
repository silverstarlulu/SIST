package day0111;

import java.util.Scanner;

class PayOuter{
	private String sawonName;
	private int gibonPay,timeSu,familySu;
	
	//내부클래스 선언
	InputInner input=new InputInner();
	SudangInner output=new SudangInner();
	
	//메서드
	public void process() {
		//데이터 입력처리
		input.inputData();
		
		//데이터 출력처리
		output.writeData();
		
	}
	
	class InputInner{
		//내부클래스 메서드
		public void inputData() {
			Scanner sc=new Scanner(System.in);
			System.out.print("이름? >> ");
			sawonName=sc.nextLine();
			System.out.print("기본급? >> ");
			gibonPay=sc.nextInt();
			System.out.print("초과시간? >> ");
			timeSu=sc.nextInt();
			System.out.print("가족 수? >> ");
			familySu=sc.nextInt();
		}
	}
	
	class SudangInner{
		//내부클래스 메서드
		public int getTimeSudang() {
			return timeSu*20000;
		}
		public int getFamilySudang() {
			if(familySu<=3) return 2000000;
			return 300000;
		}
		public int getTax() {
			return (int)(gibonPay*0.03);
		}
		public int getPay() {
			return gibonPay+getTimeSudang()+getFamilySudang()-getTax();
		}
		public void writeData() {
			System.out.println("\n[사원정보]");
			System.out.println("사원명\t기본급\t초과시간\t시간수당\t가족수\t가족수당\t세금\t실수령액");
			System.out.println("==============================================================");
			System.out.println(sawonName+"\t"+gibonPay+"\t"+timeSu+"\t"+getTimeSudang()+"\t"
								+familySu+"\t"+getFamilySudang()+"\t"+getTax()+"\t"+getPay());
		}
	}
}

public class InnerSawon_09 {

	public static void main(String[] args) {
		System.out.println("방법 #1");
		PayOuter pay1=new PayOuter();
		pay1.process();
		
		System.out.println();
		
		System.out.println("방법 #2");
		PayOuter pay2=new PayOuter();
		PayOuter.InputInner input=pay2.new InputInner();
		input.inputData();
		PayOuter.SudangInner output=pay2.new SudangInner();
		output.writeData();

	}

}
