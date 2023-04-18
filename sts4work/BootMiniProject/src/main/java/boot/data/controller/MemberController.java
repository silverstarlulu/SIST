package boot.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	@GetMapping("/member/list")
	public String memberList() {
		return "/member/memberList";
	}
	
	@GetMapping("/member/form")
	public String memberForm() {
		return "/member/memberForm";
	}
}
