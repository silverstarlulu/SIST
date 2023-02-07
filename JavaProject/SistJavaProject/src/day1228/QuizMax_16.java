package day1228;

import java.util.Scanner;

public class QuizMax_16 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int x,y,z,max,max1;
		
		System.out.print("숫자 세개를 입력하세요 >>> ");
		x=sc.nextInt();
		y=sc.nextInt();
		z=sc.nextInt();
		
		
		if(x>y&&x>z) max=x;
		else if(y>x&&y>z) max=y;
		else max=z;
		
		max1=x>y&&x>z?x:y>x&&y>z?y:z;
		
		System.out.println("==================");
		System.out.println("입력한 수: "+x+" "+y+" "+z);
		System.out.println("if문 이용 시 max = "+max);
		System.out.println("삼항연산자 이용 시 max = "+max1);

	}

}
