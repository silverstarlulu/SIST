package day0103;

import java.util.Scanner;

public class ArraySearchInt_06 {

	public static void main(String[] args) {
		/*선언된 배열에서 숫자를 입력하여 그 숫자가 있는지 찾기
		 * 없으면 없다고, 있으면 몇번째에 있는지 출력
		 * 0 입력 시 종료*/
		Scanner sc =new Scanner(System.in);
		int [] data= {5,12,33,49,337,49,20,120,120,5,44,3};
		boolean flag;
		int su;
		
		while(true) {
			System.out.print("검색할 숫자를 입력하세요.(종료: 0) >>> ");
			su=sc.nextInt();	
			
			if(su==0) {
				System.out.println("\n프로그램 종료");
				break;
			}
			
			flag=false; //못 찾는걸 기준
			
			for(int i=0;i<data.length;i++) {
				if(su==data[i]) {
					flag=true;
					System.out.println(su+"는 "+(i+1)+"번째에 있습니당.");
				}
			}
			
			if(!flag) {
				System.out.println(su+"는 없습니다.");
			}
		}
		

	}

}
