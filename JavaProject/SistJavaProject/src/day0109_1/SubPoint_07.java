package day0109_1;

import day0109.Point_07;

public class SubPoint_07 extends Point_07 {

	String msg;
	
	public SubPoint_07(int x, int y, String msg) {
		super(x, y);
		this.msg=msg;
	}
	
	public SubPoint_07() {
		//super();
		System.out.println("sub_디폴트 생성자");
	}
	
	@Override
	public void write() {
		super.write();
		System.out.println("메시지: "+msg);
	}

	public static void main(String[] args) {
		SubPoint_07 sp1=new SubPoint_07();
		sp1.write();
		SubPoint_07 sp2=new SubPoint_07(4,6,"하요");
		sp2.write();

	}

}
