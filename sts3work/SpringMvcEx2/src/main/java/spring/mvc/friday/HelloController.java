package spring.mvc.friday;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	// @RequestMapping(value = "/", method = RequestMethod.GET)
	@GetMapping("/")
	public String home(Model model) {

		model.addAttribute("msg", "HelloController로부터 포워드 됨");
		model.addAttribute("today", new Date());
		return "home";
	}

	
	@GetMapping("/apple/list")	//list 뒤에 .do, .nhn 상관없이 모두 호출 됨 / 매핑주소에 확장자 붙일 시 그것만 호출
	public String hello1(Model model) {

		// Model: request에 데이터 저장위한 인터페이스
		// 서블릿에서 코딩했던 request.setAttribute와 같다

		model.addAttribute("name", "예은이");
		model.addAttribute("addr", "경기도 부천시");

		return "result1"; // WEB-INF/day0331/result1.jsp
	}
	
	
	@GetMapping("/banana/insert")
	public ModelAndView one() {
		//request에 저장하기 위한 Model과 포워드 위한 view 합친 것 -> 클래스!(생성 필요)
		ModelAndView mview=new ModelAndView();
		
		//request에 저장
		mview.addObject("Java", 88);
		mview.addObject("Spring", 100);
		
		//2.포워드하기 위한 view
		mview.setViewName("result2");
		
		return mview;
		
	}
	
	
	@GetMapping("/orange/delete")
	public String two(Model model,HttpSession session) {
		
		//request에 저장
		model.addAttribute("name", "예은짱");
		
		//session에 저장
		session.setAttribute("myid", "lululala");
		
		return "result3";
		
	}
	
	
	@GetMapping("/shop/detail")
	public String three() {
		return "result4";
	}
	
	
	@GetMapping("/board/add/data")
	public String quiz() {
		return "result5";
	}
}
