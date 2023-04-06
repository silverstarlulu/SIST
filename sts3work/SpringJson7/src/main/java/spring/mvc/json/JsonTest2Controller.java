package spring.mvc.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController // json 전용 -> 일반메서드는 x
public class JsonTest2Controller {

	@GetMapping("/list2")
	public List<PhotoDto> list2() {
		List<PhotoDto> list = new ArrayList<PhotoDto>();

		list.add(new PhotoDto("포차코와 케로피", "포차코와케로피2.png"));
		list.add(new PhotoDto("츄피", "츄피.png"));
		list.add(new PhotoDto("케로피", "케로피2.png"));
		list.add(new PhotoDto("점프", "점프.png"));
		list.add(new PhotoDto("피짱즈", "피짱즈.png"));

		return list;
	}

	// 쌤 코드

	/*
	 * @GetMapping("/list3") public Map<String, Object> list3(@RequestParam String
	 * name) { List<PhotoDto> list = new ArrayList<PhotoDto>();
	 * 
	 * list.add(new PhotoDto("포차코와 케로피", "포차코와케로피2.png")); list.add(new
	 * PhotoDto("츄피", "츄피.png")); list.add(new PhotoDto("케로피", "케로피2.png"));
	 * list.add(new PhotoDto("점프", "점프.png")); list.add(new PhotoDto("피짱즈",
	 * "피짱즈.png"));
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * for (PhotoDto dto : list) { if (name.equals(dto.getName())) { map.put("name",
	 * dto.getName()); map.put("photo", dto.getPhoto()); } }
	 * 
	 * return map; }
	 */

}
