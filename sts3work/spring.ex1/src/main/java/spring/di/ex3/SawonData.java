package spring.di.ex3;

public class SawonData {

	private String sawonname;
	private int pay;
	private String ipsaday;
	
	public SawonData() {	// �ؿ� ����� �����ڸ� ������� ��� ����Ʈ �����ڴ� �� ��������Ƿ� ����������
		
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
