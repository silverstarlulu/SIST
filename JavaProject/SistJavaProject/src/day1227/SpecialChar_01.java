package day1227;

public class SpecialChar_01 {

	public static void main(String[] args) {
		// 문자열내에서 특별한 의미로 해석문자_ Escape Sequence(\ 이용)
		// \t : 다음 탭으로 이동
		// \n : 다음 줄로 이동
		// \' : ' 작은따옴표
		// \" : " 큰따옴표
		// \\ : \ 백슬래시
		System.out.print("Apple\t");
		System.out.print("Orange\tMellon");
		System.out.println();
		System.out.println("Apple\"");		// Apple"
		System.out.println("Apple\\");		// Apple\
		System.out.println("\"Hello\"");	// "Hello"
		System.out.println("c:\\");			// c:\
		System.out.println();
		System.out.println("Q.\"예은\",\"종수\",\"재승\"");
	}

}
