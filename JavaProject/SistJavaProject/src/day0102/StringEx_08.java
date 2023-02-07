package day0102;

public class StringEx_08 {

	public static void main(String[] args) {
		System.out.println("String 객체에 대한 멤버메서드");
		
		String str1="apple";
		String str2="APPLE";
		String str3="Have a Nice Day!";
		String str4="     Happy Day     ";
		
		System.out.println("str3의 길이 : "+str3.length());	//공백 포함
		System.out.println("str4의 길이 : "+str4.length());
		System.out.println("str4의 길이(앞뒤 공백 제거) : "+str4.trim().length());
		System.out.println("*"+str4+"*");
		System.out.println("*"+str4.trim()+"*");
		
		System.out.println("str3에서 0번 문자 : "+str3.charAt(0));
		System.out.println("str3에서 7번 문자 : "+str3.charAt(7));
		
		System.out.println("str3에서 H의 인덱스 : "+str3.indexOf('H'));
		System.out.println("str3에서 N의 인덱스 : "+str3.indexOf('N'));	
		
		//subString
		System.out.println("str3에서 Nice 추출 : "+str3.substring(7,11)); //7~10추출
		System.out.println("str3에서 Have 추출 : "+str3.substring(0,4));
		System.out.println("Nice Day 추출 : "+str3.substring(7));
		
		System.out.println("문자열 비교 : "+str1.equals(str2));
		
		System.out.println(str1.compareTo(str2));
		System.out.println("computer".compareTo("command"));
		System.out.println("apple".compareTo("banana"));
		System.out.println("김".compareTo("강"));
		
		//startsWith.endsWith
		System.out.println(str3.startsWith("Have"));
		System.out.println(str3.endsWith("Day!"));
		
		String str5="red,blue,yellow,white,gray";
		String arr[]=str5.split(",");
		System.out.println(arr.length);
		
		String a=String.valueOf(100);
		String a2=100+"";
		
		String b=String.valueOf(12.4);
		String b2=12.4+"";
		
		System.out.println(str3.replace("Nice", "Good"));
		System.out.println(str3);
		
		System.out.println(str3.replace('a', '*'));
		System.out.println(str3);
		
		
	}

}
