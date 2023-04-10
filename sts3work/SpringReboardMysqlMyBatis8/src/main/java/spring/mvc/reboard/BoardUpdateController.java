package spring.mvc.reboard;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardUpdateController {

	@Autowired
	ReboardDao dao;

	@GetMapping("/board/updatepassform")
	public ModelAndView uPassform(@RequestParam String num, @RequestParam String currentPage) {
		ModelAndView mview = new ModelAndView();

		mview.addObject("num", num);
		mview.addObject("currentPage", currentPage);

		mview.setViewName("updatepassform");

		return mview;
	}

	@PostMapping("/board/updatePass")
	public ModelAndView updateform(@RequestParam int num, @RequestParam int pass, @RequestParam String currentPage) {
		ModelAndView mview = new ModelAndView();

		int check = dao.getCheckPass(num, pass);

		if (check == 0) {
			mview.setViewName("passfail");
		} else {
			ReboardDto dto = dao.getData(num);
			mview.addObject("dto", dto);
			mview.addObject("currentPage", currentPage);

			mview.setViewName("updateform");
		}
		
		return mview;

	}
	
	@PostMapping("/board/update")
	public String update(@ModelAttribute ReboardDto dto, @RequestParam ArrayList<MultipartFile> upload,
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

				// ¾÷·Îµå
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
		dao.updateReboard(dto);

		return "redirect:content?num="+dto.getNum()+"&currentPage="+currentPage;
	}
}
