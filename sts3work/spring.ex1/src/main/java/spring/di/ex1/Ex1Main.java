package spring.di.ex1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex1Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("기존의 자바 방식 호출");
		MessageInter m1=new Message();
		m1.sayHello("예은");
		
		MessageInter m2=new Message2();
		m2.sayHello("달국");
		
		System.out.println();
		
		System.out.println("스프링 방식으로 객체 생성 후 호출");
		ApplicationContext context=new ClassPathXmlApplicationContext("appContext1.xml");
		
		MessageInter m3=(Message)context.getBean("mesBean1");	//방식 1
		m3.sayHello("마이클");
		
		MessageInter m4=context.getBean("mesBean2", Message2.class);
		m4.sayHello("메리");
	}

}
