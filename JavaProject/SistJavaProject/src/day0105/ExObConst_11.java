package day0105;

class Person{
	String name;
	int age;
	
	public Person() {
		this("홍길동",11);
		System.out.println("default 생성자");
	}
	
	public Person(String name) {
		this(name,5);
	}
	
	public Person(int age) {
		this("매머드",age);
	}
	
	public Person(String name, int age) {
		this.name=name;
		this.age=age;
		
		System.out.println("호출2");
	}
	
	public void write() {
		System.out.println("이름: "+name+"\t나이: "+age+"\n");
	}
}

public class ExObConst_11 {
	public static void main(String[] args) {
		
		Person p1=new Person();
		p1.write();
		
		Person p2=new Person("박예은");
		p2.write();
		
		Person p3=new Person(60);
		p3.write();
		
		Person p4=new Person("호올스", 999);
		p4.write();
		
	}

}
