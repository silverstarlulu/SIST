package day0111;

abstract class AbstEx{
	abstract public void show();
}

class OuterEx{
	AbstEx ab=new AbstEx() {
		
		@Override
		public void show() {
			System.out.println("나는 익명내부클래스");
			
		}
	};
}

public class AnonyClass_04 {

	public static void main(String[] args) {
		OuterEx ex=new OuterEx();
		ex.ab.show();

	}

}
