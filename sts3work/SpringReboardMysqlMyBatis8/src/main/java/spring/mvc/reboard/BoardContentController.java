package spring.mvc.reboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import reanswer.data.model.ReanswerDao;
import reanswer.data.model.ReanswerDto;
import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardContentController {
	@Autowired
	ReboardDao dao;

	@Autowired
	ReanswerDao a_dao;

	@GetMapping("/board/content")
	public ModelAndView content(@RequestParam int num, @RequestParam int currentPage) {
		ModelAndView mview = new ModelAndView();

		dao.updateReadCount(num);
		ReboardDto dto = dao.getData(num);

		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);

		// num�� �ش��ϴ� ��� db���� �����ͼ� ������.
		List<ReanswerDto> a_list = a_dao.getNumOfDatas_answer(num);
		
		//����� �������� ��������
		mview.addObject("a_listSize", a_list.size());
		mview.addObject("a_list", a_list);

		mview.setViewName("content");

		return mview;
	}
}
