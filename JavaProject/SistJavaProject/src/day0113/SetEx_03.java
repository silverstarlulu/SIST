package day0113;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class SetEx_03 {

	public static void main(String[] args) {
		//Set, Random 이용해서 난수발생(1~45) 6개출력
		Random r=new Random();
		
		Set<Integer> set=new HashSet<>();
		
		while(true) {
			int n=r.nextInt(45)+1;
			set.add(n);
			
			if(set.size()==6) break;
		}
		
		
		System.out.println("출력 1");
		for(int s:set)
			System.out.printf("%3d",s);
		
		System.out.println("\n정렬 후 출력2");
		Object[]ob=set.toArray();
		Arrays.sort(ob);
		for(int i=0;i<ob.length;i++) {
			System.out.printf("%3d",ob[i]);
		}

	}

}
