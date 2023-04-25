package boot.data.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.BoardAnswerDto;
import boot.data.service.BoardAnswerService;
import boot.data.service.MemberService;

@RestController
public class BbAnswerController {

	@Autowired
	BoardAnswerService service;

	@Autowired
	MemberService mservice;

	@PostMapping("/board/aInsert")
	public void aInsert(@ModelAttribute BoardAnswerDto adto, HttpSession session) {
		String loginUser = (String) session.getAttribute("loginUser");

		adto.setName(mservice.getNameById(loginUser));
		adto.setLoginUser(loginUser);

		service.insertAnswer(adto);
	}
	
	@GetMapping("/board/aList")
	public List<BoardAnswerDto> aList(String num){
		return service.getAllAnswers(num);
	}
	
	@GetMapping("/board/aDelete")
	public void aDelete(@RequestParam String idx) {
		service.deleteAnswer(idx);
	}
	
	@PostMapping("/board/aUpdate")
	public void aUpdate(@ModelAttribute BoardAnswerDto uadto) {
		service.updateAnswer(uadto);
	}
	 

}
