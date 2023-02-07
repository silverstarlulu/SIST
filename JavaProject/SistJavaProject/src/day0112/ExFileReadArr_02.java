package day0112;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

public class ExFileReadArr_02 {
	public static void fileRead() {
		String fileName="C:\\sist1226\\file\\info1.txt";		//1
		FileReader fr=null;										//2
		BufferedReader br=null;									//3
		
		try {
			fr=new FileReader(fileName);						//4
			br=new BufferedReader(fr);							//6
			
			System.out.println("**파일읽기_학생정보**");				//7...
			System.out.println("이름\t학교\t학년");
			System.out.println("------------------------");
			
			while(true) {										//8
				String s=br.readLine();							//9
				
				if(s==null) break;								//11...
				
				/*
				//split 이용
				String[] data=s.split(",");
				System.out.println(data[0]+"\t"+data[1]+"\t"+data[2]);
				*/
				
				//StringTokenizer 이용
				StringTokenizer st=new StringTokenizer(s, ",");
				System.out.println(st.nextToken()+"\t"+st.nextToken()+"\t"+st.nextToken()+"학년");
			}
		} catch (FileNotFoundException e) {						//5
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();								//10
		} finally {												//12
			try {
				br.close();										//13
				fr.close();
			} catch (IOException e) {							//14
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		fileRead();												//15

	}

}
