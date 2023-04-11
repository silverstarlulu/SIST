package spring.mvc.reboard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import reboard.data.model.ListDao;
import reboard.data.model.ReboardDto;

@Controller
public class ListController {

	@Autowired
	ListDao dao;

	@GetMapping("/rest/list")
	public String list() {
		return "list";
	}

	@GetMapping("/rest/list1")
	@ResponseBody
	public List<ReboardDto> listOutput() {
		List<ReboardDto> list=dao.getAllList();
		for(ReboardDto dto:list) {
			if(!dto.getPhoto().equals("no")) {
				String[] photos= dto.getPhoto().split(",");
				dto.setPhoto(photos[0]);
			}
		}
		return  list;
	}
}
