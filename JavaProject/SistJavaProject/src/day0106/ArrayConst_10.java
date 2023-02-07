package day0106;

class shop{
	private String sangpum;
	private int price;
	private String color;
	
	public shop(String sangpum,int price,String color) {
		this.sangpum=sangpum;
		this.price=price;
		this.color=color;
	}
	
	public static void showTitle() {
		System.out.println("상품명\t단가\t\t색상");
		System.out.println("==============================");
	}
	
	public void showSangpum() {
		System.out.println(this.sangpum+"\t"+this.price+"원 \t"+this.color);
	}
}

public class ArrayConst_10 {

	public static void main(String[] args) {
		shop [] s={
			new shop("갤럭시폴더", 1200000, "화이트"),
			new shop("아이폰14", 1400000, "그린"),
			new shop("아이폰13", 950000, "레드"),
			new shop("소니폰", 920000, "블랙")
		};
		
		shop.showTitle();
		for(int i=0;i<s.length;i++) {
			s[i].showSangpum();
		}
		
		
		System.out.println();
		
		shop.showTitle();
		for(shop ss:s) {
			ss.showSangpum();
		}

	}

}
