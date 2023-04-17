package book.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import book.data.bookDto;
import book.mapper.bookMapperInter;

@Controller
public class bookController {

	@Autowired
	bookMapperInter mapper;

	@GetMapping("/")
	public String root() {
		return "redirect:/book/list";
	}

	@GetMapping("/book/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();
		mview.addObject("count", mapper.getTotalCount());

		List<bookDto> list = mapper.getAllBooks();

		for (bookDto dto : list) {
			if(!dto.getBookphoto().equals("no")) {
				String[] photos = dto.getBookphoto().split(",");
				dto.setBookphoto(photos[0]);
			}
			
		}

		mview.addObject("list", list);

		mview.setViewName("bookList");

		return mview;
	}

	@GetMapping("/book/inputForm")
	public String inputForm() {
		return "bookInputForm";
	}

	@PostMapping("/book/input")
	public String input_book(@ModelAttribute bookDto dto, @RequestParam ArrayList<MultipartFile> image,
			HttpSession session) {
		String realPath = session.getServletContext().getRealPath("/photo");
		System.out.println(realPath);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String photoName = "";

		if (image.get(0).getOriginalFilename().equals(""))
			photoName = "no";
		else {

			for (MultipartFile f : image) {
				String fName = "f_" + sdf.format(new Date()) + f.getOriginalFilename();
				photoName += fName + ",";

				try {
					f.transferTo(new File(realPath + "\\" + fName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			photoName = photoName.substring(0, photoName.length() - 1);

		}

		dto.setBookphoto(photoName);
		mapper.insert_seojum(dto);

		return "redirect:list";
	}
}
