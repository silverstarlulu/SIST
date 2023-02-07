package day0111;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Scanner;

public class FileEnd {
	static final String FILENAME="C:\\sist1226\\file\\practice.txt";
	FileReader fr;
	FileWriter fw;
	BufferedReader br;
	Scanner sc=new Scanner(System.in);
	
	public int getMenu() {
		
		System.out.println("[MENU]\n1.상품추가 2.전체상품출력 3.파일삭제 0.종료");
		int num=Integer.parseInt(sc.nextLine());
		
		return num;
	}
	
	public void addsangpum() {
		System.out.println("<상품정보입력>");
		System.out.print("상품명: ");
		String sangpum=sc.nextLine();
		System.out.print("수량: ");
		int su=Integer.parseInt(sc.nextLine());
		System.out.print("단가: ");
		int dan=Integer.parseInt(sc.nextLine());
		
		try {
			fw=new FileWriter(FILENAME, true);
			
			fw.write(sangpum+","+su+","+dan+"\n");
			
			System.out.println("==============파일저장완료==============\n");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public void printSangpum() {
		NumberFormat nf=NumberFormat.getCurrencyInstance();
		int n=0;
		int total=0;
		
		System.out.println("<상품정보출력>");
		System.out.println("번호\t상품명\t수량\t단가\t합계");
		System.out.println("------------------------------------------");
		
		try {
			fr=new FileReader(FILENAME);
			br=new BufferedReader(fr);
			
			while(true) {
				String s=br.readLine();
				if(s==null) break;
				
				String [] d=s.split(",");
				String sangpum=d[0];
				int su=Integer.parseInt(d[1]);
				int dan=Integer.parseInt(d[2]);
				int sum=su*dan;
				total+=sum;
				
				System.out.println(++n+"\t"+sangpum+"\t"+su+"\t"+nf.format(dan)+"\t"+nf.format(sum));
			}
			
			System.out.println("\t총 금액: "+nf.format(total));
			
			System.out.println("==============파일출력완료==============\n");
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("**데이터가 존재하지 않습니다!**");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public void deleteFile() {
		File file=new File(FILENAME);
		if(file.exists())
			file.delete();
		
		System.out.println("==============파일삭제완료==============\n");
	}
	
	public void process() {
		while(true) {
			int num=getMenu();
			
			switch(num) {
			case 1:
				addsangpum();
				break;
			case 2:
				printSangpum();
				break;
			case 3:
				deleteFile();
				break;
			case 0:
				System.out.println("==============프로그램 종료==============");
				System.exit(0);
			default:
				System.out.println("**재입력하세요**");
				break;
			}
		}
	}
	
	public static void main(String[] args) {
		FileEnd fe=new FileEnd();
		fe.process();

	}

}
