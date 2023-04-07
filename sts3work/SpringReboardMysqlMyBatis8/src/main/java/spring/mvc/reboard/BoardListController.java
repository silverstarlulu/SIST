package spring.mvc.reboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDaoInter;
import reboard.data.model.ReboardDto;

@Controller
public class BoardListController {

	@Autowired
	ReboardDao dao;

	@GetMapping("/")
	public String start() {
		return "redirect:board/list";
	}

	@GetMapping("/board/list")
	public ModelAndView list(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		ModelAndView mview = new ModelAndView();

		int totalCount = dao.getTotalCount();

		// System.out.println(totalCount);

		int totalPage; // �� ��������
		int startPage; // �� ��(1,2,3..)�� ����������
		int endPage;

		// �� ���� ������ ������
		int start; // �� �������� ���۹�ȣ
		int perPage = 5; // �� �������� ������ �� ����
		int perBlock = 5; // �� ���� �������� ������ ����

		// �� ������ ����
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

		// �� ���� ���������� -> ������������ 3 -> s:1, e:5 / 6 -> s:6, e:10
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// �� �������� 8�̸� (6~10 -> end�������� 8�� ����)
		if (endPage > totalPage)
			endPage = totalPage;

		// ������������ �ҷ��� ���۹�ȣ
		start = (currentPage - 1) * perPage;

		// �޼��� �ҷ�����
		List<ReboardDto> list = dao.getList(start, perPage);

		// �Խñ� �տ� ���� ��ȣ
		int no = totalCount - (currentPage - 1) * perPage;

		// ��¿� �ʿ��� ������ mview�� ����
		mview.addObject("totalCount", totalCount);
		mview.addObject("list", list);
		mview.addObject("totalPage", totalPage);
		mview.addObject("startPage", startPage);
		mview.addObject("endPage", endPage);
		mview.addObject("perBlock", perBlock);
		mview.addObject("currentPage", currentPage);
		mview.addObject("no", no);
		mview.addObject("hi", "hi");

		mview.setViewName("boardlist");

		return mview;
	}

}
