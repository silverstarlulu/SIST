package day0103;

public class ArrayMax_03 {

	public static void main(String[] args) {
		
		int[] data= {23,7,12,99,60,563,77,98,1,999};
		
		System.out.println("길이 : "+data.length);
		
		int max=data[0];
		int min=data[0];
		
		for(int i=0;i<data.length;i++) {
			if(data[i]>max) max=data[i];
			if(data[i]<min) min=data[i];
		}
		System.out.println("최댓값: "+max);
		System.out.println("최솟값: "+min);

	}

}
