package spring.mvc.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController // json ���� -> �Ϲݸ޼���� x
public class JsonTest2Controller {

	@GetMapping("/list2")
	public List<PhotoDto> list2() {
		List<PhotoDto> list = new ArrayList<PhotoDto>();

		list.add(new PhotoDto("�����ڿ� �ɷ���", "�����ڿ��ɷ���2.png"));
		list.add(new PhotoDto("����", "����.png"));
		list.add(new PhotoDto("�ɷ���", "�ɷ���2.png"));
		list.add(new PhotoDto("����", "����.png"));
		list.add(new PhotoDto("��¯��", "��¯��.png"));

		return list;
	}

	// �� �ڵ�

	/*
	 * @GetMapping("/list3") public Map<String, Object> list3(@RequestParam String
	 * name) { List<PhotoDto> list = new ArrayList<PhotoDto>();
	 * 
	 * list.add(new PhotoDto("�����ڿ� �ɷ���", "�����ڿ��ɷ���2.png")); list.add(new
	 * PhotoDto("����", "����.png")); list.add(new PhotoDto("�ɷ���", "�ɷ���2.png"));
	 * list.add(new PhotoDto("����", "����.png")); list.add(new PhotoDto("��¯��",
	 * "��¯��.png"));
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * for (PhotoDto dto : list) { if (name.equals(dto.getName())) { map.put("name",
	 * dto.getName()); map.put("photo", dto.getPhoto()); } }
	 * 
	 * return map; }
	 */

}
