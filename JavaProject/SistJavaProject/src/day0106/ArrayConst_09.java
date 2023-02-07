package day0106;

class MyStuIfo{
	private String stuName;
	private String hp;
	private int score;
	
	public MyStuIfo(String stuName,String hp,int score) {
		this.stuName=stuName;
		this.hp=hp;
		this.score=score;
	}
	
	public void writeData() {
		System.out.println("이름: "+this.stuName);
		System.out.println("연락처: "+this.hp);
		System.out.println("점수: "+this.score);
	}
}

public class ArrayConst_09 {

	public static void main(String[] args) {
		/*
		MyStuIfo stu1=new MyStuIfo("박예은","010-0000-0000",30);
		MyStuIfo stu2=new MyStuIfo("박예금","010-1111-1111",31);
		MyStuIfo stu3=new MyStuIfo("박예동","010-2222-2222",32);
		MyStuIfo stu4=new MyStuIfo("박예인","010-3333-3333",33);
		MyStuIfo stu5=new MyStuIfo("박예납","010-4444-4444",34);
		MyStuIfo stu6=new MyStuIfo("박예철","010-5555-5555",35);
		
		stu1.writeData();
		stu2.writeData();
		stu3.writeData();
		stu4.writeData();
		stu5.writeData();
		stu6.writeData();
		*/
		
		//선언, 할당...초기화
		MyStuIfo [] stu_1=new MyStuIfo[3];
		stu_1[0]=new MyStuIfo("박예은","010-0000-0000",30);
		stu_1[1]=new MyStuIfo("박예금","010-1111-1111",31);
		stu_1[2]=new MyStuIfo("박예동","010-2222-2222",32);
				
		//선언,할당,초기화 동시에
		MyStuIfo [] stu_2= {
				new MyStuIfo("박예인","010-3333-3333",33),
				new MyStuIfo("박예납","010-4444-4444",34),
				new MyStuIfo("박예철","010-5555-5555",35)
				};
		
		//for문 출력
		System.out.println("#1. for문 이용한 출력");
		System.out.println("=========================");
		for(int i=0;i<stu_1.length;i++) {
			stu_1[i].writeData();
			System.out.println("-------------------------");
		}
		
		//for each문 출력
		System.out.println("#2. for each문 이용한 출력");
		System.out.println("=========================");
		for(MyStuIfo my:stu_2) {
			my.writeData();
			System.out.println("-------------------------");
		}

	}

}
