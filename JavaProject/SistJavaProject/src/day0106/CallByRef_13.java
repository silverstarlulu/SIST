package day0106;

class MyCar{
	String carName;
	int carPrice;
	String carColor;
}

public class CallByRef_13 {
	
	public static void dataIn(MyCar car) {
		car.carName="소나타";
		car.carPrice=2500;
		car.carColor="진주색";
	}
	
	public static void dataOut(MyCar car) {
		System.out.println("차종명: "+car.carName);
		System.out.println("차단가: "+car.carPrice);
		System.out.println("차색상: "+car.carColor);
	}

	public static void main(String[] args) {
		MyCar car=new MyCar();
		
		//두 메서드 모두 다 주소가 전달되므로 결국 메인의 car변수에 데이터가 들어가고 출력
		dataIn(car);
		dataOut(car);
		
	}

}
