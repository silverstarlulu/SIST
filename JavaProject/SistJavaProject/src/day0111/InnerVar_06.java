package day0111;

import day0111.Server.Client;

class Server{
	
	int a=100;
	static int b=200;
	
	static class Client{
		int c=300;
		static int d=400;
		
		public void write() {
			//System.out.println("외부일반변수 a="+a);	//접근 x
			System.out.println("외부일반변수 접근 x");
			System.out.println("외부정적변수 b="+b);
			System.out.println("내부일반변수 c="+c);
			System.out.println("내부정적변수 d="+d);
		}
	}
}

public class InnerVar_06 {

	public static void main(String[] args) {
		Server.Client cl=new Server.Client();
		cl.write();

	}

}
