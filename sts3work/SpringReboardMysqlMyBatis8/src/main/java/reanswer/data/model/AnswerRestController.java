package reanswer.data.model;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AnswerRestController {

	@Autowired
	ReanswerDao a_dao;

	@GetMapping("/board/a_delete")
	@ResponseBody
	public HashMap<String, Integer> delete_answer(@RequestParam int idx, @RequestParam String pass) {
		HashMap<String, Integer> map=new HashMap<String, Integer>();

		int check = a_dao.passCheck_answer(idx, pass);
		
		if (check == 1) {
			a_dao.delete_answer(idx);
		}
		
		map.put("check", check);
		
		return map;
	}
}
