package spring.mvc.coffee;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {

	/* @GetMapping("/board/form1") */
	@GetMapping("/form1")
	public String form1() {
		return "/board/writeform";
	}

	/* @PostMapping("/board/process1") */
	@PostMapping("/process1")
	public ModelAndView process1(@RequestParam String name, @RequestParam String date, @RequestParam String gender,
			@RequestParam(required = false) String msg, @RequestParam(defaultValue = "1") int currentPage) {
		ModelAndView mview = new ModelAndView();

		mview.addObject("name", name);
		mview.addObject("date", date);
		mview.addObject("gender", gender);

		mview.addObject("msg", msg);
		mview.addObject("currentPage", currentPage);

		mview.setViewName("board/result");

		return mview;
	}

	/* @GetMapping("/board/result2") */
	@GetMapping("/result2")
	public String result2(Model model) {
		
		model.addAttribute("myimg1","../img/����̵θ���.JPG");
		model.addAttribute("title","�Ϳ��� ����̵�");
		
		return "board/result2";
	}

}
