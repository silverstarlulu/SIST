package day1227;

public class CastingNum_04 {

	public static void main(String[] args) {
		String name = args[0];
		int java = Integer.parseInt(args[1]);
		int oracle = Integer.parseInt(args[2]);
		int sum = java + oracle;
		
		System.out.println("Q. 내 이름은 " + args[0]);
		System.out.println("   자바점수는 " + args[1] + "점");
		System.out.println("   오라클점수는 " + args[2] + "점");
		System.out.println("   두 과목의 합계는 " + sum + "점 입니다.");
		

	}

}
