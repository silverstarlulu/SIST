package day0113;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx_07 {

	public static void main(String[] args) {
		Map<String, String> map=new HashMap<>();
		
		map.put("name", "슈가");
		map.put("age", "30");
		map.put("addr", "서울시 강남구");
		
		//같은 키값 넣을경우
		map.put("name", "수지");
		
		System.out.println("size : "+map.size());
		
		//key값으로 value값 얻기
		System.out.println("이름: "+map.get("name"));
		System.out.println("나이: "+map.get("age"));
		System.out.println("주소: "+map.get("addr"));
		
		//없는 key값 검색시 null
		System.out.println("Blood: "+map.get("blood"));
		
		System.out.println();
		
		//key값을 먼저 한꺼번에 얻은 후 value 얻기
		Set<String> keySet=map.keySet();
		
		System.out.println("출력 #1");
		Iterator<String> keyIter=keySet.iterator();
		while(keyIter.hasNext()) {
			String key=keyIter.next();
			System.out.println(key+" ==> "+map.get(key));
		}
		
		System.out.println();
		
		System.out.println("출력 #2");
		for(String key:keySet)
			System.out.println(key+" ==> "+map.get(key));
		
	}

}
