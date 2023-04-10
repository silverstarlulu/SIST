package spring.mvc.reboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardContentController {
	@Autowired
	ReboardDao dao;

	@GetMapping("/board/content")
	public ModelAndView content(@RequestParam int num, @RequestParam int currentPage) {
		ModelAndView mview = new ModelAndView();

		dao.updateReadCount(num);
		ReboardDto dto = dao.getData(num);

		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);
		mview.setViewName("content");

		return mview;
	}
}
