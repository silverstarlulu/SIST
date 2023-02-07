package day0109;

public class Point_07 {
	protected int x;
	protected int y;
	
	public Point_07() {
		System.out.println("super_디폴트 생성자");
	}
	
	public Point_07(int x, int y) {
		System.out.println("super_인자 있는 생성자");
		this.x=x;
		this.y=y;
	}
	
	public void write() {
		System.out.println("x좌표는 "+x+", y좌표는 "+y);
	}
}
