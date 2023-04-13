package boot.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.model.PersonDto;

@Controller
public class FormController {

	@GetMapping("/sist/form1")
	public String form1() {
		return("/form/form1");
	}
	
	@PostMapping("/sist/read1")
	public ModelAndView result1(@RequestParam String name,@RequestParam int java,@RequestParam int spring ) {
		ModelAndView mview=new ModelAndView();
		mview.addObject("name", name);
		mview.addObject("java", java);
		mview.addObject("spring", spring);
		
		mview.setViewName("/result/result1");
		
		return mview;
	}
	
	
	
	
	@GetMapping("/sist/form2")
	public String form2() {
		return("/form/form2");
	}
	
	@PostMapping("/sist/read2")
	public String result2(@ModelAttribute("dto") PersonDto dto ) {
		return "/result/result2";
	}
	
	
	
	
	@GetMapping("/sist/form3")
	public String form3() {
		return("/form/form3");
	}
	
	@PostMapping("/sist/read3")
	public ModelAndView result3(@RequestParam Map<String, String> map) {
		ModelAndView mview=new ModelAndView();
		
		mview.addObject("name", map.get("name"));
		mview.addObject("blood", map.get("blood"));
		mview.addObject("hp", map.get("hp"));
		
		mview.setViewName("/result/result3");
		
		return mview;
	}
}
