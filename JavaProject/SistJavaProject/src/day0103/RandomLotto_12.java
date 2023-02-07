package day0103;

public class RandomLotto_12 {

	public static void main(String[] args) {
		int [] lotto=new int[6];
		
		for(int i=0;i<lotto.length;i++) {
			//난수발생
			lotto[i]=(int)(Math.random()*45)+1;	//1~45
			
			//중복처리
			for(int j=0;j<i;j++) {
				if(lotto[i]==lotto[j]) {
					i--;
					break;
				}
			}

		}
		
		//오름차순 정렬
		for(int i=0;i<lotto.length-1;i++) {
			for(int j=i+1;j<lotto.length;j++) {
				if(lotto[i]>lotto[j]) {
					int temp=lotto[i];
					lotto[i]=lotto[j];
					lotto[j]=temp;
				}
			}
		}
		
		//출력
		for(int i=0;i<lotto.length;i++) {
			System.out.printf("%5d",lotto[i]);
		}

	}

}
