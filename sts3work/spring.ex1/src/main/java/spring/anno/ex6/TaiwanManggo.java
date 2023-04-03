package spring.anno.ex6;

import org.springframework.stereotype.Component;

@Component("t_manggo")
public class TaiwanManggo implements Manggo {

	@Override
	public void writeManggoName() {
		System.out.println("ÅÂ±¹ ¸Á°í");

	}

}
