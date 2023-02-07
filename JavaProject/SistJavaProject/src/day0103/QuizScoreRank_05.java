package day0103;

public class QuizScoreRank_05 {

	public static void main(String[] args) {
		String [] name= {"이우형","이지민","이성희","박예은"};
		int [] java= {47,84,24,67};
		int [] oracle= {45,66,87,20};
		int [] tot=new int[4];
		double [] avg=new double[4];
		int [] rank=new int[4];
		
		for(int i=0;i<name.length;i++) {
			tot[i]=java[i]+oracle[i];
			avg[i]=(double)tot[i]/2;
		}
		
		for(int i=0;i<name.length;i++) {
			rank[i]=1;
			for(int j=0;j<name.length;j++) {
				if(avg[i]<avg[j]) rank[i]++;
			}
		}
		
		System.out.println("번호\t이름\t자바\t오라클\t총점\t평균\t등수");
		System.out.println("===================================================");
		for(int i=0;i<name.length;i++) {
			System.out.println((i+1)+"\t"+name[i]+"\t"+java[i]+"\t"+oracle[i]+"\t"+tot[i]+"\t"+avg[i]+"\t"+rank[i]);
		}

		
	}

}
