package spring.anno.ex6;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ManggoController {
	//@Autowired
	// 인터페이스 Manggo 구현 클래스가 하나일 경우는 자동주입 o, but, 여러개일 경우 오류 발생
	@Resource(name="t_manggo")
	Manggo manggo;
	
	public void writeManggo() {
		System.out.println("내가 좋아하는 과일은 **");
		manggo.writeManggoName();
	}
}
