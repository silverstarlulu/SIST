package day0103;

import java.util.Scanner;

public class ArrayScanScore_04 {

	public static void main(String[] args) {
		/*먼저 인원수를 입력 후 이름, 점수 등을 입력 후 출력
		 * 전체 합계, 평균 출력*/
		
		Scanner sc=new Scanner(System.in);
		int inwon;
		String [] name;
		int [] score;
		int [] rank;
		int tot=0;
		double avg=0;
		
		System.out.print("인원수를 입력하세요 >>> ");
		inwon=Integer.parseInt(sc.nextLine());
		
		name=new String[inwon];
		score=new int[inwon];
		rank= new int[inwon];
		
		for(int i=0;i<inwon;i++){
			System.out.print(i+"번지 이름 입력 >>> ");
			name[i]=sc.nextLine();
			System.out.print(i+"번지 점수 입력 >>> ");
			score[i]=Integer.parseInt(sc.nextLine());
		}
		
		//등수 구하기(다중 for문)
		for(int i=0;i<inwon;i++) {
			rank[i]=1;
			for(int j=0;j<inwon;j++) {
				//비교되는 대상이 점수가 더 높으면 i번지 등수 1 증가
				if(score[i]<score[j]) rank[i]++;
			}
		}
		
		System.out.println("============================");
		System.out.println("번호	이름	점수	등수");
		for(int i=0;i<inwon;i++) {
			System.out.println((i+1)+"	"+name[i]+"	"+score[i]+"	"+rank[i]);
			tot+=score[i];
		}
				
		avg=(double)tot/inwon;
		
		System.out.println("===========================");
		System.out.println("총점: "+tot+"점");
		System.out.printf("평균: %.2f점",avg);
		
	}

}
