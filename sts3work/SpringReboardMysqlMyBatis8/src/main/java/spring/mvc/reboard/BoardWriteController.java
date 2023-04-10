package spring.mvc.reboard;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardWriteController {

	@Autowired
	ReboardDao dao;

	@GetMapping("/board/writeform")
	public ModelAndView w_form(@RequestParam Map<String, String> map) {
		ModelAndView mview = new ModelAndView();

		// 답글일 경우만 넘어옴 (새 글 x)
		String currentPage = map.get("currentPage");
		String num = map.get("num");
		String regroup = map.get("regroup");
		String restep = map.get("restep");
		String relevel = map.get("relevel");

		System.out.println(currentPage + ", " + num); // 새 글은 null

		// 답글일 경우를 위해 입력폼에 hidden으로 넣어줘야 함
		mview.addObject("currentPage", currentPage == null ? "1" : currentPage);
		mview.addObject("num", num == null ? "0" : num);
		mview.addObject("regroup", regroup == null ? "0" : regroup);
		mview.addObject("restep", restep == null ? "0" : restep);
		mview.addObject("relevel", relevel == null ? "0" : relevel);

		mview.setViewName("writeform");

		return mview;
	}

	@PostMapping("/board/insert")
	public String insert(@ModelAttribute ReboardDto dto, @RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,@RequestParam String currentPage) {
		String path = session.getServletContext().getRealPath("/WEB-INF/photo/");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		System.out.println(path);

		String photo = "";

		if (upload.get(0).getOriginalFilename().equals(""))
			photo = "no";
		else {
			for (MultipartFile f : upload) {
				String fName = "f_" + sdf.format(new Date()) + f.getOriginalFilename();
				photo += fName + ",";

				// 업로드
				try {
					f.transferTo(new File(path + "\\" + fName));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

			photo = photo.substring(0, photo.length() - 1);
		}

		dto.setPhoto(photo);
		dao.insertReboard(dto);
		
		int num=dao.getMaxNum();

		return "redirect:content?num="+num+"&currentPage="+currentPage;
	}

}
