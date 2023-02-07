package day1229;

public class ForSum_06 {

	public static void main(String[] args) {
		int sum=0;
		
		for(int i=1;i<=10;i++) {
			sum+=i;
			
			if(i<=9) System.out.print(i+" + ");
			else System.out.print(i+" = ");
		}
		System.out.println(sum);
		
		System.out.println("=======================================");
		
		int a=1;
		int tot=0;
		
		while(a<=10) {
			tot=tot+a;
			a++;
		}
		System.out.println(tot);
		
		System.out.println("=======================================");
		
		int total=0;
		
		for(int n=1;n<=10;n++) {
			if(n%2==1)
				total+=n;
		}
		System.out.println(total);
		
		int total2=0;
		
		for(int n=1;n<=10;n+=2) {
			total2+=n;
		}
		System.out.println(total2);
	}

}
