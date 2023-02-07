package day0113;

import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public class ListEx_04 {

	public static void main(String[] args) {
		// 순차적, 중복데이터 허용
		
		//List<String> list=new Vector<>();
		Vector<String> list=new Vector<>();
		
		System.out.println("초기할당크기: "+list.capacity());
		System.out.println("초기데이터개수: "+list.size());
		
		list.add("사과");
		list.add("배");
		list.add("사과");
		list.add("오렌지");
		list.add("딸기");
		list.add("바나나");
		
		System.out.println("초기할당크기: "+list.capacity());
		System.out.println("초기데이터개수: "+list.size());
		
		System.out.println("출력 #1");
		for(int i=0;i<list.size();i++) {
			String s=list.get(i);
			System.out.printf("%5s",s);
		}
		
		System.out.println();
		
		System.out.println("출력 #2");
		for(String s:list)
			System.out.printf("%5s",s);
		
		System.out.println();
		
		System.out.println("출력 #3");
		Iterator<String> iter=list.iterator();
		while(iter.hasNext()) {
			System.out.printf("%5s",iter.next());
		}
		
		System.out.println();
		
		System.out.println("출력 #4");
		Object [] ob=list.toArray();
		for(int i=0;i<list.size();i++) {
			String s=(String)ob[i];
			System.out.printf("%5s",s);
		}
		
		
	}

}
