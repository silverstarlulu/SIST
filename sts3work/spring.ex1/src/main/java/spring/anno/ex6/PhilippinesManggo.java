package spring.anno.ex6;

import org.springframework.stereotype.Component;

@Component("p_manggo")
public class PhilippinesManggo implements Manggo {

	@Override
	public void writeManggoName() {
		System.out.println("ÇÊ¸®ÇÉ ¸Á°í");

	}

}
