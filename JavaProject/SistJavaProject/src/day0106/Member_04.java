package day0106;

public class Member_04 {
	private String name;
	private String gender;
	private String addr;
	
	static String ban;
	static int cnt=0;	//공동 메모리 이용
	
	//세 개 합친 setter
	public void setData(String name,String gender,String addr) {
		this.name=name;
		this.gender=gender;
		this.addr=addr;
	}
	
	public void writeData() {
		cnt++;
		System.out.println("**학생"+cnt+"정보**");
		System.out.println("이름: "+this.name);
		System.out.println("소속학급: "+Member_04.ban);
		System.out.println("성별: "+this.gender);
		System.out.println("주소: "+this.addr);
	}
}
