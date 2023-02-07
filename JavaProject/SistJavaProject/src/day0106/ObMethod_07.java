package day0106;

class Manggo{
	private String writer;
	private String subject;
	private static String msg="Happy Friday~!~!~!~!!~!";
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public static String getMsg() {
		return msg;
	}
	
}

public class ObMethod_07 {

	public static void writeManggo(Manggo m) {	//클래스를 인자값으로 넘김
		System.out.println("**망고 클래스 출력**");
		System.out.println("작성자: "+m.getWriter());
		System.out.println("제목: "+m.getSubject());
	}
	
	public static void main(String[] args) {
		
		System.out.println("망고클래스의 메시지 출력");
		System.out.println(Manggo.getMsg());
		
		Manggo m1=new Manggo();
		m1.setWriter("예은쑤");
		m1.setSubject("망고의 하루");
		writeManggo(m1);
		
		Manggo m2=new Manggo();
		m2.setWriter("계은쑤");
		m2.setSubject("나는 김망고");
		writeManggo(m2);
	}

}
