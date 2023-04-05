package spring.db.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarMemberController {

	@Autowired
	CarMemberDao dao;

	@GetMapping("/member/list")
	public String mem_list(Model model) {

		int count = dao.getTotalCount();

		List<CarMemberDto> list = dao.getAllDatas_member();

		model.addAttribute("count", count);
		model.addAttribute("list", list);

		return "carmember/memberlist";
	}

	@GetMapping("/member/writeform")
	public String mem_writeform() {

		return "carmember/writeform";
	}

	@PostMapping("/member/write")
	public String mem_insert(@ModelAttribute CarMemberDto dto) {

		dao.insert_member(dto);

		return "redirect:list";
	}

	@GetMapping("/member/updateform")
	public String mem_updateform(Model model, @RequestParam String num) {
		
		CarMemberDto dto = dao.getData_member(num);
		model.addAttribute("dto", dto);

		return "carmember/updateform";
	}
	
	@PostMapping("/member/update")
	public String mem_update(@ModelAttribute CarMemberDto dto) {
		
		dao.update_member(dto);
		
		return "redirect:list";
	}
	
	@GetMapping("/member/delete")
	public String mem_delete(@RequestParam String num) {
		
		dao.delete_member(num);
		
		return "redirect:list";
	}

}
