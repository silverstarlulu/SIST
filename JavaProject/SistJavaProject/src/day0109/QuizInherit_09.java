package day0109;

//super
class Shop{
	private String sangpum;
	private int su;
	
	public Shop() {
		/*
		this.sangpum="딸기";
		this.su=5;
		*/
		this("딸기",5);
	}
	
	public Shop(String sangpum, int su) {
		this.sangpum=sangpum;
		this.su=su;
	}
	
	public void writeShop() {
		System.out.println("상품: "+this.sangpum);
		System.out.println("수량: "+this.su);
	}
}

//sub
class MySangpum extends Shop{
	private int price;
	
	public MySangpum() {
		this.price=1000;
	}
	
	public MySangpum(String sangpum, int su, int price) {
		super(sangpum,su);
		this.price=price;
	}
	
	@Override
	public void writeShop() {
		System.out.println("단가: "+price);
		super.writeShop();
	}
	
	
}

public class QuizInherit_09 {
	public static void main(String[] args) {
		MySangpum s1=new MySangpum();
		s1.writeShop();
		
		System.out.println();
		
		MySangpum s2=new MySangpum("오렌지", 10, 1200);
		s2.writeShop();

	}

}
