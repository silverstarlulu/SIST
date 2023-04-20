package boot.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService service;

	@GetMapping("/login/main")
	public String loginform(HttpSession session, Model model) {

		// 폼에 아이디 얻기
		String loginUser = (String) session.getAttribute("loginUser");
		// 로그인 상태?
		String loginOk = (String) session.getAttribute("loginOk");

		// 한번도 실행 x -> null
		if (loginOk == null)
			return "/login/loginForm";
		else {
			// 로그인 중일 때 request에 로그인 한 이름 저장
			String name = service.getNameById(loginUser);
			model.addAttribute("name", name);
			
			return "/login/logoutForm";
		}
	}

	@PostMapping("/login/loginProcess")
	public String loginProc(@RequestParam String id, @RequestParam String pass,
			@RequestParam(required = false) String cbSave, HttpSession session, Model model) {

		int check = service.loginIdPassCheck(id, pass);

		if (check == 1) {
			session.setMaxInactiveInterval(60 * 60 * 8);

			session.setAttribute("loginUser", id);
			session.setAttribute("loginOk", "yes");
			session.setAttribute("saveOk", cbSave);

			// id에 대한 데이터
			MemberDto dto = service.getDataById(id);

			session.setAttribute("loginPhoto", dto.getPhoto());

			return "redirect:main";

		} else {

			return "/member/passFail";
		}
	}
	
	
	@GetMapping("/login/logoutProcess")
	public String logoutProc(HttpSession session) {
		session.removeAttribute("loginOk");
	
		return "redirect:main";
	}
}
