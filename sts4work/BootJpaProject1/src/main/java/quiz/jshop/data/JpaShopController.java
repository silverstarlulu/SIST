package quiz.jshop.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JpaShopController {

	@Autowired
	JpaShopDao dao;

	@GetMapping("/jshop/list")
	public ModelAndView jsopList() {
		ModelAndView mview = new ModelAndView();

		List<JpaShopDto> list = dao.shopList();

		mview.addObject("list", list);
		mview.setViewName("shopList");

		return mview;
	}

	@GetMapping("/jshop/addForm")
	public String addForm() {
		return "shopAddForm";
	}

	@PostMapping("/jshop/insert")
	public String insertJshop(@ModelAttribute JpaShopDto dto) {
		dao.insertJshop(dto);

		return "redirect:list";
	}

	@GetMapping("/jshop/shopDetail")
	public ModelAndView detailPage(@RequestParam int num) {
		ModelAndView mview = new ModelAndView();
		JpaShopDto dto = dao.getData(num);

		mview.addObject("dto", dto);
		mview.setViewName("shopDetail");

		return mview;
	}

	@GetMapping("/jshop/updateForm")
	public ModelAndView updateForm(@RequestParam int num) {

		JpaShopDto dto = dao.getData(num);

		ModelAndView mview = new ModelAndView();
		mview.addObject("dto", dto);

		mview.setViewName("shopUpdateForm");

		return mview;
	}

	@PostMapping("/jshop/update")
	public String updateJshop(@ModelAttribute JpaShopDto dto) {
		dao.updateJshop(dto);

		return "redirect:shopDetail?num="+dto.getNum();
	}
	
	@GetMapping("/jshop/delete")
	public String deleteJshop(@RequestParam int num) {
		dao.deleteJshop(num);

		return "redirect:list";
	}
}
