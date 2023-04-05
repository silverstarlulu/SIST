package spring.db.car;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarController {

	@Autowired
	MyCarDao dao;

	@GetMapping("/samsung/list")
	public String sam_list(Model model) {

		// 전체 개수
		int totalCount = dao.getTotalCount();

		// 목록 가져오기
		List<MyCarDto> list = dao.getAllDatas();

		// request에 저장
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("list", list);

		return "car/carlist";
	}

	@GetMapping("/samsung/writeform")
	public String sam_writeform() {
		return "car/writeform";
	}

	@PostMapping("/samsung/write")
	public String sam_insert(@ModelAttribute MyCarDto dto) {
		dao.insertMyCar(dto);

		return "redirect:list";
	}

	@GetMapping("/samsung/updateform")
	public String updateform(@RequestParam String num, Model model) {

		MyCarDto dto = dao.getData(num);
		model.addAttribute("dto", dto);

		return "car/updateform";
	}

	@PostMapping("/samsung/update")
	public String sam_update(@ModelAttribute MyCarDto dto) {
		dao.updateMyCar(dto);

		return "redirect:list";
	}

	@GetMapping("/samsung/delete")
	public String sam_delete(@RequestParam String num) {
		dao.deleteMyCar(num);

		return "redirect:list";
	}

}
