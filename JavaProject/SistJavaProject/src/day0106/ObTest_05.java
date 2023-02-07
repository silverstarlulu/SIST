package day0106;

class Jungbo{
	private String name;
	private String address;
	private String hp;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}

	public void setData(String name,String address,String hp) {
		this.setName(name);
		this.setAddress(address);
		this.setHp(hp);
	}
	
	/*
	public void getData() {
		System.out.println("이름: "+this.getName());
		System.out.println("주소: "+this.getAddress());
		System.out.println("연락처: "+this.getHp());
	}
	*/
	
	public String getData() {
		
		String s="name: "+name+"\naddress: "+address+"\nhp: "+hp;
		return s;
	}
	
}

public class ObTest_05 {

	public static void main(String[] args) {
		Jungbo j=new Jungbo();
		
		j.setName("유재석");
		j.setAddress("서울시 강동구");
		j.setHp("010-1111-1111");
		
		System.out.println("**1.값출력**");
		System.out.println("이름: "+j.getName());
		System.out.println("주소: "+j.getAddress());
		System.out.println("연락처: "+j.getHp());
		
		System.out.println();
		
		System.out.println("**2.값 변경 후 출력**");
		j.setData("강호동","경기도 시흥시","010-0000-0000");
		System.out.println(j.getData());
		
	}

}
