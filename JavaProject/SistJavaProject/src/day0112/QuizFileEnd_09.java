package day0112;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

public class QuizFileEnd_09 {
	
	static final String FILENAME="C:\\sist1226\\file\\sangpum.txt";
	FileReader fr;
	BufferedReader br;
	FileWriter fw;
	Scanner sc=new Scanner(System.in);
	
	//메뉴선택
	public int getMenu() {
		
		System.out.println("1.상품추가 2.전체상품출력 3.파일삭제 9.종료");
		int num=Integer.parseInt(sc.nextLine());
		
		return num;
	}
	
	//정보입력 및 파일저장
	public void inputSangpum(){
		System.out.print("상품명 >> ");
		String sangpum=sc.nextLine();
		System.out.print("수량 >> ");
		int su=Integer.parseInt(sc.nextLine());
		System.out.print("단가 >> ");
		int dan=Integer.parseInt(sc.nextLine());
		
		try {
			fw=new FileWriter(FILENAME,true);
			
			//저장
			fw.write(sangpum+"\n");
			fw.write(su+"\n");
			fw.write(dan+"\n");
			
			System.out.println("=====파일저장완료=====");
			
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
	
	//파일 출력
	public void ouputSangpum(){
		System.out.println("번호\t상품명\t수량\t단가\t총금액");
		System.out.println("-------------------------------------");
		
		try {
			fr=new FileReader(FILENAME);
			br=new BufferedReader(fr);
			
			int num=0;
			
			while(true) {
				String sangpum=br.readLine();
				
				if(sangpum==null) break;
				
				int su=Integer.parseInt(br.readLine());
				int dan=Integer.parseInt(br.readLine());
				
				int total=getTotal(su,dan);
				
				System.out.println(++num+"\t"+sangpum+"\t"+su+"\t"+dan+"\t"+total);
			}
			
			System.out.println("**출력 끝**");
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
	
	public int getTotal(int su,int dan) {
		return su*dan;
	}
	
	public void deleteFile() {
		Path filePath=Paths.get("C:\\sist1226\\file\\sangpum.txt");
		
		try {
			Files.delete(filePath);
			
			System.out.println("파일삭제 완료");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		QuizFileEnd_09 quiz=new QuizFileEnd_09();
		
		while(true) {
			int num=quiz.getMenu();
			
			switch(num) {
			case 1:
				System.out.println("상품정보 입력");
				quiz.inputSangpum();
				break;
			case 2:
				System.out.println("상품정보 출력");
				quiz.ouputSangpum();
				break;
			case 3:
				quiz.deleteFile();
				break;
			case 9:
				System.out.println("프로그램 종료");
				System.exit(0);
			default:
				System.out.println("재입력하세요");
				break;
			}
		}

	}

}
