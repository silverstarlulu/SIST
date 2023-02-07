package day1228;

public class IfTest_10 {

	public static void main(String[] args) {
		int score=88;
		//char grade;
		String grade;
		
		/* if문 사용
		if(score>=90) {
			grade='A';
		} else if(score>=80) {
			grade='B';
		} else if(score>=70) {
			grade='C';
		} else if(score>=60) {
			grade='D';
		} else{
			grade='F';
		}
		*/
		//삼항연산자 사용
		grade=score>=90?"A":
				score>=80?"B":
				  score>=70?"C":
					  score>=60?"D":"F";
		
		System.out.println("학점은 " + grade + "학점 입니다.");

	}

}
