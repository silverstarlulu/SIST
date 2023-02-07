package day0113;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetEx_01 {
	//(인터페이스 or 클래스)<데이터형> 객체이름=new 클래스명<데이터형>
	
	//set: 유일성이 중요할 때, 중복x, 순서x
	
	public static void main(String[] args) {
		Set<String> set1=new HashSet<>();	//Set 컬렉션구조안에 String 데이터를 담겠다
											//Set은 인터페이스이므로 객체생성 x
		set1.add("사과");
		set1.add("배");
		set1.add("사과");
		set1.add("오렌지");
		set1.add("바나나");
		set1.add("키위");
		
		System.out.println("데이터 개수: "+set1.size()); //중복 허용 x, 5개로 나옴
		
		//출력할 때:  iterator 인터페이스에서 얻어온 객체로 반복문(주로 while)사용
		
		//단순 for each 사용
		System.out.println("출력 #1");
		for(String s:set1)
			System.out.println(s);
		
		System.out.println();
		
		//iterator 사용
		System.out.println("출력 #2");
		Iterator<String> iter=set1.iterator();
		while(iter.hasNext()) {		//데이터가 더이상 없으면 false 반환
			String s=iter.next();	//데이터가 있으면 true니까 다음 이동 계속
			System.out.println(s);
		}
		
		System.out.println();
		
		//toArray 사용
		System.out.println("출력 #3");
		Object [] ob=set1.toArray();
		for(int i=0;i<ob.length;i++) {
			System.out.println(ob[i]);
		}
		
		System.out.println();
		
		//모든 데이터 삭제
		set1.clear();
		
		//isEmpty로 삭제 확인
		if(set1.isEmpty())
			System.out.println("Set 타입안에 데이터가 없음");
		else
			System.out.println("Set 타입안에 데이터가 존재");
	}

}
