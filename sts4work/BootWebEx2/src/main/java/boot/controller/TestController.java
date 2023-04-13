package boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@GetMapping("/")
	public ModelAndView list() {
		ModelAndView model=new ModelAndView();
		
		model.addObject("name", "박예은");
		model.addObject("addr", "서울시 강남구");
		model.addObject("hp", "010-1111-3434");
		
		model.setViewName("redirect:sist/home");
		
		return model;
	}
}
