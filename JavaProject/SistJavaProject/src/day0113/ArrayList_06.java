package day0113;

import java.util.ArrayList;

public class ArrayList_06 {

	public static void main(String[] args) {
		String [] str= {"장미","프리지아","백합","국화","안개꽃","달리아"};
		
		//객체를 삽입, 삭제, 검색할 수 있는 컨테이너클래스
		ArrayList<String> list=new ArrayList<>();
		
		//데이터담기
		for(String s:str)
			list.add(s);
		
		//몇개 출력
		System.out.println("size: "+list.size());
		
		//출력 #1
		System.out.println("**for문 이용**");
		for(int i=0;i<list.size();i++) {
			String s=list.get(i);
			System.out.println(s);
		}
		
		System.out.println();
		
		//출력 #2
		System.out.println("**for each문 이용**");
		for(String s:list)
			System.out.println(s);

	}

}
