package day0103;

public class QuizSort_11 {

	public static void main(String[] args) {
		String [] names= {"이효리","김삼순","진","슈가","유재석"};
		int [] ages= {40,33,27,28,52};
		
		//이름의 오름차순 출력
		for(int i=0;i<names.length-1;i++) {
			for(int j=i+1;j<names.length;j++) {
				if(names[i].compareTo(names[j])>0) { 
					String temp_n=names[i];
					int temp_a=ages[i];
					names[i]=names[j];
					ages[i]=ages[j];
					names[j]=temp_n;
					ages[j]=temp_a;
				}
			}
		}
		
		System.out.println("번호\t이름\t나이");
		for(int i=0;i<names.length;i++) {
			System.out.println((i+1)+"\t"+names[i]+"\t"+ages[i]);
		}
	}

}
