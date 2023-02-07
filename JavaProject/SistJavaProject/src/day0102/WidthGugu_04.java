package day0102;

public class WidthGugu_04 {

	public static void main(String[] args) {
		System.out.println("\t********** 가로 방향 구구단 출력 **********");
		for(int dan=2;dan<=9;dan++) {
			System.out.print("["+dan+"단]\t");
		}
		System.out.println();
		
		int result=1;
		
		for(int su=1;su<=9;su++) {
			for(int dan=2;dan<=9;dan++) {
				result=dan*su;
				System.out.print(dan+"x"+su+"="+result+"\t");
			}
			System.out.println();
		}

	}

}
