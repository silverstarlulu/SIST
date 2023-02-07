package day0104;

import java.util.Scanner;

public class BaekJoon {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
        int H=sc.nextInt();
        int M=sc.nextInt();
        int modify, modify_H, modify_M;
  
        if(H==0){
            H=24;
            modify=(H*60+M)-45;
            modify_H=modify/60;
            if(modify_H==24) {
            	modify_H=0;
            }
            modify_M=modify%60;
        } else {
        	modify=(H*60+M)-45;
        	modify_H=modify/60;
        	modify_M=modify%60;
        }
        
        System.out.printf("%d %d",modify_H,modify_M);

	}

}
