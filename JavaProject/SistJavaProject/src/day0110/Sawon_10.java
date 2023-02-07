package day0110;

public class Sawon_10 {
	private String sawonName;
	private int gibonPay,timeSu,familySu;
	
	public String getSawonName() {
		return sawonName;
	}
	public void setSawonName(String sawonName) {
		this.sawonName = sawonName;
	}
	public int getGibonPay() {
		return gibonPay;
	}
	public void setGibonPay(int gibonPay) {
		this.gibonPay = gibonPay;
	}
	public int getTimeSu() {
		return timeSu;
	}
	public void setTimeSu(int timeSu) {
		this.timeSu = timeSu;
	}
	public int getFamilySu() {
		return familySu;
	}
	public void setFamilySu(int familySu) {
		this.familySu = familySu;
	}

	public Sawon_10(String sName,int gPay,int fSu,int tSu) {
		this.sawonName=sName;
		this.gibonPay=gPay;
		this.familySu=fSu;
		this.timeSu=tSu;
	}
	
	public int familySudang() {
		if(familySu<3) return 500000; 
		else return 70000;
	}
	
	public int timeSudang() {
		if (timeSu>=5) return 100000;
		return timeSu*20000;
	}
	
	public int getTotal() {
		double total=(gibonPay+familySudang()+timeSudang())*0.9;
		return (int)total;
	}
	
	public void writeData() {
		System.out.println("사원명\t기본급\t가족수당\t시간외수당\t실수령액");
		System.out.println("======================================");
		System.out.println(getSawonName()+"\t"+getGibonPay()+"\t"+familySudang()+"\t"+timeSudang()+"\t"+getTotal());
	}
	
}
