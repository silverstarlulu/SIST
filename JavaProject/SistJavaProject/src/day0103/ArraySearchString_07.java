package day0103;

import java.util.Scanner;

public class ArraySearchString_07 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String input;
		boolean flag;
		
		String [] data= {"가","나","다","라","마","바","사","아","자"};
		
		while(true) {
			System.out.print("검색할 문자는? >>> ");
			input=sc.nextLine();
			
			if(input.equalsIgnoreCase("q")) {
				System.out.println("\n프로그램 종료");
				break;
			}
			
			flag=false;
			
			for(int i=0;i<data.length;i++) {
				if(input.equals(data[i])) {
					flag=true;
					System.out.println("'"+input+"'는 "+(i+1)+"번째 자리에 있습니당.");
				}
			}
			
			if(!flag) {
				System.out.println("'"+input+"'는 없습니다. 다른 문자를 입력하세요!\n");
			}
			
		}
		
	}

}
