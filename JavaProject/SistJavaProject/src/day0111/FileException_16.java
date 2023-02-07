package day0111;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/*score.txt.를 읽고 총 몇개인지 구하기 점수에 대한 총점, 평균까지 출력*/
public class FileException_16 {
	
	//IOException, FileNotFoundExceptio 에 던지므로 try-catch가 없음!
	public static void scoreInput() throws IOException, FileNotFoundException{
		String fileName="C:\\sist1226\\file\\score.txt";
		FileReader fr=null;
		BufferedReader br=null;
		int cnt=0;		//총 개수
		int total=0;	//합계
		double avg=0;	//평균
		
		//파일읽기
		fr=new FileReader(fileName);
		System.out.println("파일 정상적으로 읽음");
		
		br=new BufferedReader(fr);
		
		while(true) {
			String s=br.readLine();
			
			//종료
			if(s==null) break;
			
			//합계, 평균 구하려면 캐스팅 필요
			//문자열 점수를 int로 반환
			cnt++;
			total+=Integer.parseInt(s);
		}
		
		avg=(double)total/cnt;
		
		System.out.println("총 갯수: "+cnt);
		System.out.println("총점: "+total);
		System.out.printf("평균: %.2f\n",avg);
	}

	//멀티캐치를 위해 main에서 함. -> finally에서 close 불가
	public static void main(String[] args) {
		try {
			scoreInput();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("**정상종료**");

	}

}
