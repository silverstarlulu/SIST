package day0112;

import java.util.StringTokenizer;

public class ExToken_01 {

	public static void main(String[] args) {
		String str="red,blue,yellow,pink,white,cyan";
		
		System.out.println("String 객체의 split을 이용한 분리");
		String []arr=str.split(",");
		System.out.println("총 "+arr.length+"개");
		
		for(int i=0;i<arr.length;i++) {
			System.out.println(i+":"+arr[i]);
		}
		
		for(String a:arr) {
			System.out.println(a);
		}
		
		System.out.println("StringTokenizer를 이용한 분리");
		StringTokenizer st=new StringTokenizer(str, ",");
		System.out.println("총 토큰 수: "+st.countTokens());
		
		while(st.hasMoreTokens()) {					//다음 토큰이 있으면 true, 없으면 false
			System.out.println(st.nextToken()); 	//다음 토큰을 얻음
		}

	}

}
