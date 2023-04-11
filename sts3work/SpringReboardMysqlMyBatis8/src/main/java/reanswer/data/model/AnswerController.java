package reanswer.data.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AnswerController {
	@Autowired
	ReanswerDao a_dao;

	@PostMapping("/board/answer_insert")
	public String answer_insert(@RequestParam String currentPage, @ModelAttribute ReanswerDto dto) {
		a_dao.insert_answer(dto);

		return "redirect:content?num=" + dto.getNum() + "&currentPage=" + currentPage;
	}
	
}
