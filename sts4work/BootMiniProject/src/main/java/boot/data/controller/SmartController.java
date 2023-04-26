package boot.data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.BoardDto;
import boot.data.dto.SmartDto;
import boot.data.service.SmartService;

@Controller
@RequestMapping("/smart")
public class SmartController {
	
	@Autowired
	SmartService service;
	
	@GetMapping("/form")
	public String form() {
		return "/smart/smartform";
	}
	
	@GetMapping("/list")
	public ModelAndView list(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		ModelAndView mview=new ModelAndView();
		
		int totalCount = service.getTotalCount();

		// System.out.println(totalCount);

		int totalPage; // 총 페이지수
		int startPage; // 각 블럭(1,2,3..)의 시작페이지
		int endPage;

		// 각 블럭의 마지막 페이지
		int start; // 각 페이지의 시작번호
		int perPage = 8; // 한 페이지당 보여질 글 개수
		int perBlock = 5; // 한 블럭당 보여지는 페이지 개수

		// 총 페이지 개수
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

		// 각 블럭의 시작페이지 -> 현재페이지가 3 -> s:1, e:5 / 6 -> s:6, e:10
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 총 페이지가 8이면 (6~10 -> end페이지를 8로 수정)
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 불러올 시작번호
		start = (currentPage - 1) * perPage;

		// 메서드 불러오기
		List<SmartDto> list = service.getShopList(start, perPage);


		// 게시글 앞에 붙을 번호
		int no = totalCount - (currentPage - 1) * perPage;

		// 출력에 필요한 변수들 mview에 저장
		mview.addObject("totalCount", totalCount);
		mview.addObject("list", list);
		mview.addObject("totalPage", totalPage);
		mview.addObject("startPage", startPage);
		mview.addObject("endPage", endPage);
		mview.addObject("perBlock", perBlock);
		mview.addObject("currentPage", currentPage);
		mview.addObject("no", no);
		
		mview.setViewName("/smart/smartlist");
		
		return mview;
	}
	
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute SmartDto dto) {
		
		service.insertShop(dto);
		
		return "redirect:list";
	}
	
	@GetMapping("/detail")
	public ModelAndView detail(@RequestParam int num, @RequestParam int currentPage) {
		ModelAndView mview=new ModelAndView();
		
		mview.addObject("dto", service.getSangpum(num));
		mview.addObject("currentPage", currentPage);
		mview.setViewName("/smart/detail");
		
		return mview;
	}

}
