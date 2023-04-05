package spring.mvc.json;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JsonTestController {

	@GetMapping("/list1") 	// ajax���� url ���� ��
	@ResponseBody 			// JSON ó�� �� �������� ��� �ǵ���
	public Map<String, String> list1() {
		Map<String, String> map = new HashMap<String, String>();

		map.put("name", "�ڿ���");
		map.put("hp", "010-1111-1111");
		map.put("addr", "����� ������");

		return map;
	}
}
