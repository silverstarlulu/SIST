package day0111;

abstract class AbstEx1{
	abstract public void dataAdd();
	abstract public void dataList();
}

public class AnonyClass_07 {
	
	//익명내부클래스 형태로 가져오기
	AbstEx1 ab1=new AbstEx1() {
		
		@Override
		public void dataList() {
			System.out.println("데이터를 출력합니다");
		}
		
		@Override
		public void dataAdd() {
			System.out.println("데이터를 추가합니다");
		}
	};
	
	public static void main(String[] args) {
		AnonyClass_07 an=new AnonyClass_07();
		an.ab1.dataAdd();
		an.ab1.dataList();

	}

}
