package spring.di.ex3;

public class SawonData {

	private String sawonname;
	private int pay;
	private String ipsaday;
	
	public SawonData() {	// 밑에 명시적 생성자를 만들었을 경우 디폴트 생성자는 안 만들어지므로 만들어줘야함
		
	}
	
	public SawonData(String name) {
		sawonname=name;
	}
	
	
	//getter setter
	public String getSawonname() {
		return sawonname;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getIpsaday() {
		return ipsaday;
	}

	public void setIpsaday(String ipsaday) {
		this.ipsaday = ipsaday;
	}
	
}
