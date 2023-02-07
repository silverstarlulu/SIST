package day0109;

public class EmpMain_06 extends Manager_06 {

	public EmpMain_06(String name, int salary, String depart) {
		super(name, salary, depart);
	}

	public static void main(String[] args) {
		EmpMain_06 emp=new EmpMain_06("이효리", 230, "디자인부");
		System.out.println(emp.getEemployee());

	}

}
