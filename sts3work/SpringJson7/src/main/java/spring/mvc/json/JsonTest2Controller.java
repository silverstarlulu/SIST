package spring.mvc.json;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController	//json 전용 -> 일반메서드는 x
public class JsonTest2Controller {
	
	@GetMapping("/list2")
	public List<PhotoDto> list2(){
		List<PhotoDto> list=new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("포차코와 케로피", "포차코와케로피2.png"));
		list.add(new PhotoDto("츄피", "츄피.png"));
		list.add(new PhotoDto("케로피", "케로피2.png"));
		list.add(new PhotoDto("점프", "점프.png"));
		list.add(new PhotoDto("피짱즈", "피짱즈.png"));
		
		return list;
	}
}
