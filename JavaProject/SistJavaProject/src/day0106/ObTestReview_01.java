package day0106;

public class ObTestReview_01 {

	String name;
	int age;
	
	public ObTestReview_01() {
		this("예우닝",15);
	}
	
	public ObTestReview_01(String name) {
		this(name,19);
	}
	
	public ObTestReview_01(String name,int age) {
		this.name=name;
		this.age=age;
	}
	
	public String getName() {
		return name;
	}
	
	public int getAge() {
		return age;
	}
	
	public static void main(String[] args) {
		ObTestReview_01 ob1=new ObTestReview_01();
		ObTestReview_01 ob2=new ObTestReview_01("박예은");
		ObTestReview_01 ob3=new ObTestReview_01("김예은",80);
		
		System.out.println("이름은 "+ob1.getName()+", 나이는 "+ob1.getAge());
		System.out.println("이름은 "+ob2.getName()+", 나이는 "+ob2.getAge());
		System.out.println("이름은 "+ob3.getName()+", 나이는 "+ob3.getAge());
	}

}
