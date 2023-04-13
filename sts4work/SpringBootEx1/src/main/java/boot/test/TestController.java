package boot.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/test")
	public TestDto hello() {
		TestDto dto = new TestDto();
		dto.setName("박예은");
		dto.setAddr("경기도 부천시");
		
		return dto;
	}
}
