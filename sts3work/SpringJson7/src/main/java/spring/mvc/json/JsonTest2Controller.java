package spring.mvc.json;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController	//json ���� -> �Ϲݸ޼���� x
public class JsonTest2Controller {
	
	@GetMapping("/list2")
	public List<PhotoDto> list2(){
		List<PhotoDto> list=new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("�����ڿ� �ɷ���", "�����ڿ��ɷ���2.png"));
		list.add(new PhotoDto("����", "����.png"));
		list.add(new PhotoDto("�ɷ���", "�ɷ���2.png"));
		list.add(new PhotoDto("����", "����.png"));
		list.add(new PhotoDto("��¯��", "��¯��.png"));
		
		return list;
	}
}
