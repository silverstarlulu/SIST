package day0112;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Scanner;

public class QuizFileEnd_answer {
	
	Scanner sc=new Scanner(System.in);
	static final String FILENAME="C:\\sist1226\\file\\sangpum_answer.txt";
	FileReader fr;
	BufferedReader br;
	FileWriter fw;
	
	//메뉴
	public int getMenu() {
		int num;
		System.out.println("**메뉴**");
		System.out.println("1. 상품추가");
		System.out.println("2. 전체상품출력");
		System.out.println("3. 파일삭제");
		System.out.println("9. 종료");
		num=Integer.parseInt(sc.nextLine());
		
		return num;
	}
	
	//상품추가
	public void sangpumAdd() {
		String sang;
		int su,dan;
		
		System.out.println("상품명입력");
		sang=sc.nextLine();
		System.out.println("수량");
		su=Integer.parseInt(sc.nextLine());
		System.out.println("단가");
		dan=Integer.parseInt(sc.nextLine());
		
		try {
			fw=new FileWriter(FILENAME,true);
			
			fw.write(sang+","+su+","+dan+"\n");
			
			System.out.println("**추가되었습니다**");
			
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
	
	//데이터 출력
	public void fileAllDatas() {
		NumberFormat nf=NumberFormat.getCurrencyInstance();
		int num=0;
		int total=0;
		
		System.out.println("번호\t상품명\t수량\t단가\t총금액");
		System.out.println("--------------------------------------");
		
		try {
			fr=new FileReader(FILENAME);
			br=new BufferedReader(fr);
			
			while(true) {
				String s=br.readLine();
				if(s==null) break;
				
				String [] d=s.split(",");
				String sang=d[0];
				int su=Integer.parseInt(d[1]);
				int dan=Integer.parseInt(d[2]);
				int sum=su*dan;
				
				//총금액에 추가
				total+=sum;
				
				System.out.println(++num+"\t"+sang+"\t"+su+"\t"+nf.format(dan)+"\t"+nf.format(sum));
				
			}
			
			System.out.println();
			System.out.println("\t총금액="+nf.format(total));
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(br!=null) br.close();
				if(fr!=null) fr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	
	//파일 삭제
	public void deleteSangpum() {
		
		//파일객체 생성
		File file=new File(FILENAME);
		
		//파일이 존재한다면 삭제
		if(file.exists()) file.delete();
		
		System.out.println("**모든 데이터가 삭제되었습니다.**");
	}
	
	//최종처리 메서드
	public void process() {
		while(true) {
			int num=getMenu();
			
			switch(num) {
			case 1:
				System.out.println("상품정보를 추가합니다");
				sangpumAdd();
				break;
			case 2:
				System.out.println("전체 상품을 출력합니다");
				fileAllDatas();
				break;
			case 3:
				System.out.println("전체 상품을 삭제합니다");
				deleteSangpum();
				break;
			case 9:
				System.out.println("**프로그램 종료**");
				System.exit(0);
			default:
				System.out.println("재입력하세요");
				break;
			}
		}
	}
	
	public static void main(String[] args) {
		QuizFileEnd_answer answer=new QuizFileEnd_answer();
		answer.process();

	}

}
