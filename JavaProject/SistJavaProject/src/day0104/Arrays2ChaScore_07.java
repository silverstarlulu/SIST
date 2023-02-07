package day0104;

public class Arrays2ChaScore_07 {

	public static void main(String[] args) {
		
		String[] name={"이지민","권예지","박예은"};
		int[][] score={{67,78,89,0},{77,88,99,0},{45,98,100,0}};
		
		for(int i=0;i<score.length;i++) {
			for(int j=0;j<3;j++) {
				score[i][3]+=score[i][j];
			}
		}
		
		System.out.println("이름\t자바\t오라클\t스프링\t총점");
		for(int i=0;i<name.length;i++){
			System.out.print(name[i]+"\t");
			for(int j=0;j<score[i].length;j++) {
				System.out.print(score[i][j]+"\t");
			}
			System.out.println();
		}

	}

}
