package day0106;

public class MemberMain_04 {

	public static void main(String[] args) {
		Member_04.ban="JAVA반";
		
		Member_04 mem1=new Member_04();
		mem1.setData("송혜교","여자","서울");
		mem1.writeData();
		
		System.out.println("====================");
		
		Member_04 mem2=new Member_04();
		mem1.setData("김지석","남자","인천");
		mem1.writeData();
		
		System.out.println("====================");
		
		Member_04 mem3=new Member_04();
		mem1.setData("박예은","여자","부천");
		mem1.writeData();
		
		
	}

}
