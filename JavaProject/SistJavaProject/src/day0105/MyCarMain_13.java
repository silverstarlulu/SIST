package day0105;

public class MyCarMain_13 {

	public static void main(String[] args) {
		System.out.println("**나의 자동차 정보**");
		MyCar_13 car=new MyCar_13();
		car.write();
		
		System.out.println();
		
		System.out.println("**자동차명 변경 후 출력**");
		car.setter("제네시스 g80",8000,"그레이");
		car.write();
		

	}

}
