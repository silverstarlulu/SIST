package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.BoardAnswerDto;
import boot.data.dto.BoardDto;
import boot.data.service.BoardAnswerService;
import boot.data.service.BoardService;
import boot.data.service.MemberService;

@Controller
public class BoardController {

	@Autowired
	BoardService service;

	@Autowired
	MemberService m_service;

	@Autowired
	BoardAnswerService a_service;

	@GetMapping("/board/list")
	public ModelAndView boardList(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		ModelAndView mview = new ModelAndView();

		int totalCount = service.getTotalCount();

		// System.out.println(totalCount);

		int totalPage; // 총 페이지수
		int startPage; // 각 블럭(1,2,3..)의 시작페이지
		int endPage;

		// 각 블럭의 마지막 페이지
		int start; // 각 페이지의 시작번호
		int perPage = 10; // 한 페이지당 보여질 글 개수
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
		List<BoardDto> list = service.getList(start, perPage);

		// 댓글 개수
		for (BoardDto d : list) {
			d.setAcount(a_service.getAllAnswers(d.getNum()).size());
			System.out.println(a_service.getAllAnswers(d.getNum()).size());
		}

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

		mview.setViewName("/board/boardList");

		return mview;
	}

	@GetMapping("/board/form")
	public String form() {
		return "/board/writeform";
	}

	@PostMapping("/board/insert")
	public String insert(@ModelAttribute BoardDto dto, HttpSession session) {

		String path = session.getServletContext().getRealPath("/photo");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		if (dto.getUpload().getOriginalFilename().equals(""))
			dto.setUploadfile("no image");
		else {
			String uploadFile = "f_" + sdf.format(new Date()) + dto.getUpload().getOriginalFilename();
			dto.setUploadfile(uploadFile);

			try {
				dto.getUpload().transferTo(new File(path + "\\" + uploadFile));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		String loginUser = (String) session.getAttribute("loginUser");
		dto.setLoginUser(loginUser);

		String name = m_service.getNameById(loginUser);
		dto.setName(name);

		service.insertBoard(dto);

		return "redirect:content?num=" + service.getMaxNum();
	}

	@GetMapping("/board/content")
	public ModelAndView content(@RequestParam String num, @RequestParam(defaultValue = "1") int currentPage) {
		ModelAndView mview = new ModelAndView();

		service.updateReadCount(num);

		BoardDto dto = service.getData(num);

		int docLoc = dto.getUploadfile().lastIndexOf("."); // . 위치 구하기
		String ext = dto.getUploadfile().substring(docLoc + 1); // 확장자명 구하기

		if ((ext.equalsIgnoreCase("jpg")) || (ext.equalsIgnoreCase("gif")) || (ext.equalsIgnoreCase("jpeg"))
				|| (ext.equalsIgnoreCase("png")))
			mview.addObject("bupload", true);
		else
			mview.addObject("bupload", false);

		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);
		mview.setViewName("/board/content");

		return mview;
	}

}
