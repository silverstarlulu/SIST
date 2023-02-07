package day0107;

import java.util.Scanner;

public class gugu {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in); 
        int n=sc.nextInt();
        int result;
        int count=0;
        
        result=n/10+n%10;
        
        
        System.out.println(result);
        /*
        while(nn==n) {
        	 //if(nn<10) ;
        	 nn=nn%10*10+nn;
        	 count++;
        	 
        }
        
        System.out.println(count);
		*/
	}

}
