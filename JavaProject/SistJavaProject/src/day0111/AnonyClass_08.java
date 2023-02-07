package day0111;

abstract class AbstEx2{
	abstract public void dataAdd();
	abstract public void dataList();
}

class SubAbst extends AbstEx2{

	@Override
	public void dataAdd() {
		System.out.println("데이터 입력");
	}

	@Override
	public void dataList() {
		System.out.println("데이터 출력");
	}
	
}

public class AnonyClass_08 {
	AbstEx2 ab2=new AbstEx2() {
		
		@Override
		public void dataList() {
			System.out.println("회원목록 출력");
		}
		
		@Override
		public void dataAdd() {
			System.out.println("회원 가입");
		}
	};
	
	SubAbst sub=new SubAbst();
	
	
	public static void main(String[] args) {
		AnonyClass_08 an=new AnonyClass_08();
		an.ab2.dataAdd();
		an.ab2.dataList();
		
		an.sub.dataAdd();
		an.sub.dataList();
	}

}
