package day1229;

import java.util.Scanner;

public class QuizScanIf_01 {

	public static void main(String[] args) {
		/*상품명, 수량, 단가를 입력하여 총 금액을 구함, 
		 * 구입수량이 5개 이상이면 10% 할인, 실제 구입금액
		 */
		
		Scanner sc=new Scanner(System.in);
		
		String name;
		int su,dan,sum;
		double dc,pay;
		
		//입력
		System.out.print("상품명 입력 >>> ");
		name=sc.nextLine();
		System.out.print("수량 및 단가 입력 >>> ");
		su=sc.nextInt();
		dan=sc.nextInt();
		
		//계산
		sum=su*dan;
		
		//출력
		System.out.println("[구입내역]");
		System.out.println(name+" "+su+"개는 총 "+sum+"원 입니다.");
		
		//예외
		if(su>=5) {
			dc=sum*0.1;
			System.out.println("5개이상은 10% DC됨");
			pay=sum-dc;
			System.out.printf("실제구입가격: %.0f원",pay);
		}
	}

}
