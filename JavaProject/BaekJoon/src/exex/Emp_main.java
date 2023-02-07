package exex;

import java.util.Scanner;

class Emp{
	private String name;
	private int pay;
	private int famsu;
	private int timesu;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getFamsu() {
		return famsu;
	}
	public void setFamsu(int famsu) {
		this.famsu = famsu;
	}
	public int getTimesu() {
		return timesu;
	}
	public void setTimesu(int timesu) {
		this.timesu = timesu;
	}
	
	public int getFaimilySudang() {
		int f_Sudang=famsu*50000;
		if(famsu>=4) f_Sudang=200000;
		return f_Sudang;
	}
	
	public int getTimeSudang() {
		int t_Sudang=timesu*30000;
		if(timesu>=10) t_Sudang=300000;
		return t_Sudang;
	}
	
	public int getTotalPay() {
		return pay+getFaimilySudang()+getTimeSudang();
	}
	
	public static void showTitle() {
		System.out.println("**우리회사 급여현황**");
		System.out.println("사원명\t급여\t가족수\t초과시간\t가족수당\t시간수당\t총급여");
		System.out.println("=====================================================");
	}
}

public class Emp_main {
	public static void writeData(Emp[] emp) {
		Emp.showTitle();
		for(Emp e: emp) {
			System.out.println(e.getName()+"\t"+e.getPay()+"\t"+e.getFamsu()+"\t"+
								e.getTimesu()+"\t"+e.getFaimilySudang()+"\t"+e.getTimeSudang()+"\t"+e.getTotalPay());
		}
	}
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		System.out.print("입력할 직원수는? >>> ");
		int inwon=Integer.parseInt(sc.nextLine());
		
		Emp[] emp=new Emp[inwon];
		
		for(int i=0;i<inwon;i++) {
			emp[i]=new Emp();
			
			System.out.print("이름 >> ");
			String name=sc.nextLine();
			System.out.print("급여 >> ");
			int pay=Integer.parseInt(sc.nextLine());
			System.out.print("가족 수 >> ");
			int famsu=Integer.parseInt(sc.nextLine());
			System.out.print("초과근무시간 >> ");
			int timesu=Integer.parseInt(sc.nextLine());
			
			emp[i].setName(name);
			emp[i].setPay(pay);
			emp[i].setFamsu(famsu);
			emp[i].setTimesu(timesu);
			
			System.out.println();
		}
		
		writeData(emp);
	}

}
