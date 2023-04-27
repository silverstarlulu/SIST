package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.ReboardDto;
import boot.data.service.ReboardService;

@Controller
@RequestMapping("/reboard")
public class ReboardController {

	@Autowired
	ReboardService service;

	@GetMapping("/list")
	public ModelAndView list(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchColumn", required = false) String sc,
			@RequestParam(value = "searchWord", required = false) String sw) {

		ModelAndView mview = new ModelAndView();

		int totalPage; // 총 페이지수
		int startPage; // 각 블럭(1,2,3..)의 시작페이지
		int endPage;

		// 각 블럭의 마지막 페이지
		int start; // 각 페이지의 시작번호
		int perPage = 5; // 한 페이지당 보여질 글 개수
		int perBlock = 5; // 한 블럭당 보여지는 페이지 개수

		int totalCount = service.getTotalCount(sc, sw);
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
		List<ReboardDto> list = service.getPagingList(sc, sw, start, perPage);

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

		mview.setViewName("/reboard/boardlist");

		return mview;
	}

	@GetMapping("/form")
	public String form(@RequestParam(defaultValue = "0") int num, @RequestParam(defaultValue = "0") int regroup,
			@RequestParam(defaultValue = "0") int restep, @RequestParam(defaultValue = "0") int relevel,
			@RequestParam(defaultValue = "1") int currentPage, Model model) {

		// 답글일때 넘어오는 값 (새글일 경우에는 모두 null, defaultValue로 전달)
		model.addAttribute("num", num);
		model.addAttribute("regroup", regroup);
		model.addAttribute("restep", restep);
		model.addAttribute("relevel", relevel);
		model.addAttribute("currentPage", currentPage);

		String subject = "";

		if (num > 0) {
			subject = service.getData(num).getSubject();
		}

		model.addAttribute("subject", subject);

		return "/reboard/writeform";
	}

	@PostMapping("/insert")
	public String insertReboard(@ModelAttribute ReboardDto dto, @RequestParam ArrayList<MultipartFile> upload,
			HttpSession session) {

		String path = session.getServletContext().getRealPath("/photo");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String photo = "";

		if (upload.get(0).getOriginalFilename() != "") {
			for (MultipartFile f : upload) {
				String fName = "f_" + sdf.format(new Date()) + f.getOriginalFilename();
				photo += fName + ",";

				try {
					f.transferTo(new File(path + "\\" + fName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			photo = photo.substring(0, photo.length() - 1);

		}

		dto.setPhoto(photo);
		service.insertReboard(dto);

		return "redirect:list";
	}

	@GetMapping("/content")
	public ModelAndView contentReboard(@RequestParam int num, @RequestParam int currentPage) {
		ModelAndView mview = new ModelAndView();
		
		service.updateReadcount(num);

		mview.addObject("dto", service.getData(num));
		mview.addObject("currentPage", currentPage);

		mview.setViewName("/reboard/content");
		

		return mview;

	}
}
