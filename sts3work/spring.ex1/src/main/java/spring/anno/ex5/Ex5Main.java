package spring.anno.ex5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex5Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext app = new ClassPathXmlApplicationContext("annoContext.xml");
		MySqlController msc = (MySqlController) app.getBean("mySqlController");
		
		msc.insert("강달국");
		msc.select("박예은");
		msc.delete("5");
	}

}
