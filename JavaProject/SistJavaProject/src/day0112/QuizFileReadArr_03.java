package day0112;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

public class QuizFileReadArr_03 {
	public static void fileRead() {
		String fileName="C:\\sist1226\\file\\coffeeshop.txt";
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(fileName);
			br=new BufferedReader(fr);
			
			System.out.println("번호\t상품명\t수량\t단가\t총금액");
			System.out.println("========================================");
			
			int n=0;
			
			while(true) {
				String s=br.readLine();
				
				if(s==null) break;
				
				/* split 사용
				String [] data=s.split(",");
				
				//내가 한 망 코드
				//System.out.println(data[0]+"\t"+data[1]+"\t"+data[2]+"\t"+Integer.parseInt(data[1])*Integer.parseInt(data[2]));
				
				String sang=data[0];
				int su= Integer.parseInt(data[1]);
				int dan=Integer.parseInt(data[2]);
				int total=su*dan;
				 */
				
				//StringTokenizer 사용
				StringTokenizer st=new StringTokenizer(s,",");
				
				String sang=st.nextToken();
				int su=Integer.parseInt(st.nextToken().trim());
				int dan=Integer.parseInt(st.nextToken().trim());
				int total=su*dan;
				
				System.out.println(++n+"\t"+sang+"\t"+su+"개\t"+dan+"원\t"+total+"원");
			}
			
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
	public static void main(String[] args) {
		fileRead();

	}

}
