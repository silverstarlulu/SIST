package spring.anno.ex6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex6Main {

	public static void main(String[] args) {
		ApplicationContext app=new ClassPathXmlApplicationContext("annoContext.xml");
		
		Manggo manggo1=(PhilippinesManggo)app.getBean("p_manggo");
		manggo1.writeManggoName();
		
		Manggo manggo2=(TaiwanManggo)app.getBean("t_manggo");
		manggo2.writeManggoName();
		
		System.out.println();
		
		ManggoController mc=(ManggoController)app.getBean("manggoController");
		mc.writeManggo();

	}

}
