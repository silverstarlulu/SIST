package day0106;
/*1. CallbyValue: 값만 전달받음 (int,double,String)
 *2. CallbyReference: 주소가 전달 (배열)*/

class Test1{
	String name="lee";
	String addr="seoul";
}

public class CallByEx_12 {
	
	//1.CallbyValue
	public static void changeInt(int b) {
		b=20;
		System.out.println("전달받은 정수 값: "+b);
		
	}
	
	//2.CallbyReference
	public static void changeArray(int [] arr) {
		System.out.println("전달받은 배열출력");
		
		for(int ar:arr) {
			System.out.println(ar);
		}
		
		//값 변경
		arr[2]=90;
	}
	
	//3.CallbyReference_Test1
	public static void changeTest(Test1 t1) {
		System.out.println("전달받은 Test1 객체 출력");
		System.out.println(t1.name+","+t1.addr);
		
		//값 변경
		t1.name="이효리";
		t1.addr="제주시";
	}
	
	//4.
	public static void changeString(String str) {
		System.out.println("전달받은 문자열: "+str);
		
		//값 변경
		str="Happy Day";
		
	}
	
	public static void main(String[] args) {
		//1
		int a=50;
		changeInt(a);
		System.out.println("a값이 바뀔까? "+a); 	//변경되지 않음

		System.out.println();
		
		//2
		int [] arr1={10,20,30};
		changeArray(arr1);
		
		System.out.println("메서드 호출 후 배열값 확인 ");
		for(int ar:arr1) {
			System.out.println(ar);					//값 변경
		}
		
		System.out.println();
		
		//3
		Test1 t1=new Test1();
		changeTest(t1);
		System.out.println(t1.name+","+t1.addr);	//값 변경
		
		System.out.println();
		
		//4
		String str="Nice";
		changeString(str);			//String은 객체지만 값 전달
		System.out.println("문자열 변경 확인: "+str); 	//변경되지 않음
	}

}
