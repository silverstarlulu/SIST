package day0109;

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

	public static int getFamilySudang(int famsu) {
		int result=famsu*50000;
		if(famsu>=4) result=200000;
		return result;
	}
	
	public static int getTimeSudang(int timesu) {
		int result=timesu*30000;
		if(timesu>=10) result=300000;
		return result;
	}
	
	public static int getTotalPay(int pay, int famsu, int timesu) {
		int result=pay+famsu+timesu;
		return result;
	}
}

public class QuizEmp_03 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		Emp emp=new Emp();
		System.out.print("입력할 직원수는? >>> ");
		int inwon=Integer.parseInt(sc.nextLine());
		
		String [] name=new String[inwon];
		int [] pay=new int[inwon];
		int [] famsu=new int[inwon];
		int [] timesu=new int[inwon];
		int [] f_s=new int[inwon];
		int [] t_s=new int[inwon];
		int [] total=new int[inwon];
		
		for(int i=0;i<inwon;i++) {
			System.out.print("이름은? >>> ");
			name[i]=sc.nextLine();
			emp.setName(name[i]);
				
			System.out.print("급여는? >>> ");
			pay[i]=Integer.parseInt(sc.nextLine());
			emp.setPay(pay[i]);
				
			System.out.print("가족수는? >>> ");
			famsu[i]=Integer.parseInt(sc.nextLine());
			emp.setFamsu(famsu[i]);
			f_s[i]=emp.getFamilySudang(famsu[i]);
			
			System.out.print("초과근무시간은? >>> ");
			timesu[i]=Integer.parseInt(sc.nextLine());
			emp.setTimesu(timesu[i]);
			t_s[i]=emp.getTimeSudang(timesu[i]);
			
			total[i]=emp.getTotalPay(pay[i],f_s[i],t_s[i]);
			
			System.out.println();
		}
		
		System.out.println("**우리회사 직원 급여 현황**");
		System.out.println("-----------------------------------------------------");
		System.out.println("사원명\t급여\t가족수\t초과시간\t가족수당\t시간수당\t총급여");
		for(int i=0;i<inwon;i++) {
			System.out.println(name[i]+"\t"+pay[i]+"\t"+famsu[i]+"\t"+timesu[i]+"\t"+f_s[i]+"\t"+t_s[i]+"\t"+total[i]);
		}
		
		
	}

}
