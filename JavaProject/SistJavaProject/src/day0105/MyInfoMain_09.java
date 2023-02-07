package day0105;

public class MyInfoMain_09 {

	public static void main(String[] args) {
		MyInfo_09 info=new MyInfo_09();
		info.setName("박예은");
		info.setAge(25);

		String name=info.getName();
		int age=info.getAge();
		
		System.out.printf("%3s(%2d)",name,age);

	}

}
