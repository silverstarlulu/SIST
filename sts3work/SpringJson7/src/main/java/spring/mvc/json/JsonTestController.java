package spring.mvc.json;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JsonTestController {

	@GetMapping("/list1") 	// ajax에서 url 쓰던 것
	@ResponseBody 			// JSON 처리 후 브라우저로 출력 되도록
	public Map<String, String> list1() {
		Map<String, String> map = new HashMap<String, String>();

		map.put("name", "박예은");
		map.put("hp", "010-1111-1111");
		map.put("addr", "서울시 강남구");

		return map;
	}
}
