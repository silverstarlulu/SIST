package day0109;

//Sub
public class Manager_06 extends Emp_06 {
	String depart;
	
	public Manager_06(String name, int salary, String depart) {
		super(name, salary);
		this.depart=depart;
	}
	
	@Override
	public String getEemployee() {
		return super.getEemployee()+","+depart;
	}

	
}
