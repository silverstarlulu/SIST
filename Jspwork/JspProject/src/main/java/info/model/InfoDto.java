package info.model;

import java.sql.Timestamp;

public class InfoDto {
	
	private String num;			// DB에 저장한 컬럼명대로
	private String name;
	private String addr;
	private Timestamp sdate;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Timestamp getSdate() {
		return sdate;
	}
	public void setSdate(Timestamp sdate) {
		this.sdate = sdate;
	}
	
}
