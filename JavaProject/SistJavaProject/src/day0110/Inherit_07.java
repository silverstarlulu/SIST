package day0110;

interface Color {
	String INITCOLOR="White";
	public void showColor();
}

class Red implements Color{

	@Override
	public void showColor() {
		System.out.println("Red_showColor");
		System.out.println("현재 색상: "+INITCOLOR);
	}
	
}

class Blue implements Color{

	@Override
	public void showColor() {
		System.out.println("Blue_showColor");
	}
	
}

class Green implements Color{

	@Override
	public void showColor() {
		System.out.println("Green_showColor");
	}
	
}

public class Inherit_07 {

	public static void show(Color color) {
		color.showColor();
	}
	
	public static void main(String[] args) {
		show(new Red());
		show(new Green());
		show(new Blue());
		
		/*
		Color color;
		color=new Red();
		color.showColor();
		
		color=new Blue();
		color.showColor();
		
		color=new Green();
		color.showColor();
		*/
	}

}
