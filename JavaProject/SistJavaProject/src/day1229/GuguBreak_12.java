package day1229;

public class GuguBreak_12 {

	public static void main(String[] args) {
		
		loop: for(int dan=2;dan<=9;dan++) {
				for(int su=1;su<=9;su++) {
					if(su==3)
						break loop;
					System.out.println(dan+"x"+su+"="+dan*su);
				}
				System.out.println();
			}
	}

}
