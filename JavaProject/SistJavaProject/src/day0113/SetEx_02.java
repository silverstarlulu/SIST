package day0113;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx_02 {

	public static void main(String[] args) {
		Set<Integer> set1=new HashSet<>();
		
		set1.add(5);
		set1.add(15);
		set1.add(25);
		set1.add(35);
		set1.add(45);
		set1.add(55);
		
		System.out.println("개수: "+set1.size());
		
		System.out.println();
		
		System.out.println("출력 #1");
		for(int n:set1)
			System.out.printf("%5d",n);
		
		System.out.println();
		System.out.println();
		
		System.out.println("출력 #2");
		Iterator<Integer> iter=set1.iterator();
		while(iter.hasNext())
			System.out.printf("%5d",iter.next());
	
		System.out.println();
		System.out.println();
		
		System.out.println("출력 #3");
		Object[]ob=set1.toArray();
		for(int i=0;i<ob.length;i++) {
			System.out.printf("%5d",ob[i]);
		}
		
	}

}
