package day0113;

public class Shop_answer_09 {
	private String sangpum;
	private int su;
	private int dan;
	public String getSangpum() {
		return sangpum;
	}
	public void setSangpum(String sangpum) {
		this.sangpum = sangpum;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getDan() {
		return dan;
	}
	public void setDan(int dan) {
		this.dan = dan;
	}
	
	public int getTotal() {
		return this.su*this.dan;
	}
}
