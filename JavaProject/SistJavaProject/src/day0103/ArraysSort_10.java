package day0103;

public class ArraysSort_10 {

	public static void main(String[] args) {
		//문자열 오름차순 정렬
		
		String[] data={"이승기","유재석","하하","신민아","송혜교","강호동","노홍철"};
		
		System.out.println("==============ORIGINAL==============");
		for(int i=0;i<data.length;i++) {
			System.out.print(data[i]+" ");
		}
		
		System.out.println("\n==============오름차순정렬==============");
		for(int i=0;i<data.length-1;i++) {
			for(int j=i+1;j<data.length;j++) {
				if(data[i].compareTo(data[j])>0) {
					String temp=data[i];
					data[i]=data[j];
					data[j]=temp;
				}
			}
		}
		
		for(int i=0;i<data.length;i++) {
			System.out.print(data[i]+" ");
		}
	}

}
