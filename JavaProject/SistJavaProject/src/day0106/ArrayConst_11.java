package day0106;

class Info{
	private String name;
	private String b_type;
	private int age;
	
	public Info(String name, String b_type, int age) {
		this.name=name;
		this.b_type=b_type;
		this.age=age;
	}
	
	public static void Title() {
		System.out.println("이름\t혈액형\t나이");
		System.out.println("--------------------");
	}
	
	public void writeData() {
		System.out.println(name+"\t"+b_type+"형 \t"+age+"세");
	}
}

public class ArrayConst_11 {

	public static void main(String[] args) {
		Info [] human= {
				new Info("박예은", "O", 25),
				new Info("최보현", "A", 26),
				new Info("강달국", "B", 13)
		};
		
		System.out.println("총 "+human.length+"명 정보 출력");
		Info.Title();
		for(int i=0;i<human.length;i++) {
			human[i].writeData();
		}
		
		System.out.println();
		
		System.out.println("총 "+human.length+"명 정보 출력");
		Info.Title();
		for(Info i:human) {
			i.writeData();
		}
	}

}
