package day0104;

import java.util.Scanner;

public class Arrays2chaBinggo_08 {

	public static void main(String[] args) {
		/*3행 3열로 2차원배열을 만들고 엔터를 누르면
		 * 1~3사이의 난수가 발생
		 * 가로, 세로, 대각선에서 같은 숫자가 나올 시 빙고 1개
		 * 종료: q */
		
		Scanner sc=new Scanner(System.in);
		int [][]puzzle=new int[3][3];
		int bingo;
		
		while(true) {
			System.out.println("***같은 숫자가 나오면 빙고~!~!***");
			for(int i=0;i<puzzle.length;i++) {	
				for(int j=0;j<puzzle[i].length;j++) {
					puzzle[i][j]=(int)(Math.random()*3)+1;
					System.out.printf("%3d",puzzle[i][j]);
				}
				System.out.println();
			}
			
			bingo=0;
			
			for(int i=0;i<puzzle.length;i++) {
				if(puzzle[i][0]==puzzle[i][1]&&puzzle[i][1]==puzzle[i][2]) bingo++;
				if(puzzle[0][i]==puzzle[1][i]&&puzzle[1][i]==puzzle[2][i]) bingo++;
			}
			
			if(puzzle[0][0]==puzzle[1][1]&&puzzle[1][1]==puzzle[2][2]) bingo++;
			if(puzzle[0][2]==puzzle[1][1]&&puzzle[1][1]==puzzle[2][0]) bingo++;
			
			if(bingo==0)
				System.out.println("!!!!!꽝!!!!!");
			else
				System.out.println("빙고 "+bingo+"개~~~~~~!!!");
				
			System.out.println("엔터를 누르면 다음 난수 발생(종료:q)");
			String ent=sc.nextLine();
			if(ent.equalsIgnoreCase("q")) {
				System.out.println("\n게임종료");
				break;
			}
				
		}
	
	}

}
