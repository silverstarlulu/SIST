package spring.di.ex1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex1Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("������ �ڹ� ��� ȣ��");
		MessageInter m1=new Message();
		m1.sayHello("����");
		
		MessageInter m2=new Message2();
		m2.sayHello("�ޱ�");
		
		System.out.println();
		
		System.out.println("������ ������� ��ü ���� �� ȣ��");
		ApplicationContext context=new ClassPathXmlApplicationContext("appContext1.xml");
		
		MessageInter m3=(Message)context.getBean("mesBean1");	//��� 1
		m3.sayHello("����Ŭ");
		
		MessageInter m4=context.getBean("mesBean2", Message2.class);
		m4.sayHello("�޸�");
	}

}
