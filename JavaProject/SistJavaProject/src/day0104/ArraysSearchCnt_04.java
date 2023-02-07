package day0104;

import java.util.Scanner;

public class ArraysSearchCnt_04 {

	public static void main(String[] args) {
		String[] names={"김도희","김병후","김영돈","박종수","권예지",
						"이우형","이지영","서동익","지성용","서아랑"};
		
		while(true) {
			Scanner sc=new Scanner(System.in);
			System.out.print("검색할 성을 입력하세요 >>> ");
			String sung=sc.nextLine();
			
			if(sung.equals("종료")) {
				System.out.println("종료합니다!!!!");
				break;
			}
			
			boolean flag=false;
			int cnt=0;
		
			for(int i=0;i<names.length;i++) {	
				if(names[i].startsWith(sung)) {
					cnt++;
					System.out.println(i+": "+names[i]);
					flag=true;
				}
			}
			
			if(flag)
				System.out.println("\t총 "+cnt+"명 검색");
			else
				System.out.println(sung+"씨 성을 가진 사람은 없습니다.\n");
			System.out.println();
		}
		
	}
		
}
