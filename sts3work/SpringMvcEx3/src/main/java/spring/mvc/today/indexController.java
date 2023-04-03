package spring.mvc.today;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class indexController {
	
	@GetMapping("/")
	public String home(Model model) {

		return "index";
	}

	
	@GetMapping("/happy")
	public String happy() {
		return "happy";
	}
	
	
	@GetMapping("/hello")
	public String hello(Model model) {
		model.addAttribute("msg", "�ȳ��ϼ���");
		
		return "hello";
	}
	
	
	@GetMapping("/nice/hi")
	public String nice(Model model) {
		model.addAttribute("name", "����");
		model.addAttribute("addr", "����õ��");
		
		return "nice";
	}
}
