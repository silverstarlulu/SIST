package boot.data.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@RestController
public class LoginRestController {

	@Autowired
	MemberService service;

	@GetMapping("/member/login")
	public HashMap<String, String> loginProc(String id, String pass, HttpSession session) {
		HashMap<String, String> map = new HashMap<>();
		int result = service.loginIdPassCheck(id, pass);

		if (result == 1) {
			session.setMaxInactiveInterval(60 * 60 * 4);

			MemberDto mdto = service.getDataById(id);

			session.setAttribute("loginOk", "yes");
			session.setAttribute("loginUser", id);
			session.setAttribute("loginPhoto", mdto.getPhoto());
			session.setAttribute("loginName", mdto.getName());
		}

		map.put("result", result == 1 ? "success" : "fail");

		return map;
	}
	
	@GetMapping("/member/logout")
	public void logoutProc(HttpSession session) {
		session.removeAttribute("loginOk");
		session.removeAttribute("loginUser");
	}
	
}
