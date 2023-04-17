package data.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MarketDto;
import data.mapper.MarketMapperInter;

@Controller
public class MarketController {

	@Autowired
	MarketMapperInter mapper;

	@GetMapping("/")
	public String root() {
		return "redirect:market/list";
	}

	@GetMapping("/market/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();
		int totalCount = mapper.getTotalCount();
		List<MarketDto> list = mapper.getAllDatas();

		mview.addObject("totalCount", totalCount);
		mview.addObject("list", list);
		mview.setViewName("marketList");

		return mview;
	}

	@GetMapping("/market/add")
	public String addForm() {
		return "addForm";
	}

	@PostMapping("/market/insert")
	public String insert_Market(@ModelAttribute MarketDto dto, @RequestParam MultipartFile photo, HttpSession session) {
		// 파라미터의 MultipartFile photo는 addform의 name과 맞춰주기
		// upload를 realPath로 하겠다는 것
		String path = session.getServletContext().getRealPath("/upload");
		System.out.println(path);

		if (photo.getOriginalFilename().equals(""))
			dto.setPhotoname(null);
		else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname = "f_" + sdf.format(new Date()) + photo.getOriginalFilename();
			dto.setPhotoname(photoname);

			// 실제 업로드
			try {
				photo.transferTo(new File(path + "\\" + photoname));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		mapper.insertMarket(dto);

		return "redirect:list";
	}

	@GetMapping("/market/delete")
	public String delete_Market(@RequestParam String num, HttpSession session) {

		String photo = mapper.getData(num).getPhotoname();

		if (photo != null) {
			String path = session.getServletContext().getRealPath("/upload");

			File file = new File(path + "\\" + photo);
			file.delete();
		}

		mapper.deleteMarket(num);

		return "redirect:list";
	}

	@GetMapping("/market/modify")
	public ModelAndView updateForm(@RequestParam String num) {
		ModelAndView mview = new ModelAndView();

		MarketDto dto = mapper.getData(num);

		mview.addObject("dto", dto);
		mview.setViewName("updateForm");

		return mview;
	}

	@PostMapping("/market/update")
	public String update_Market(@ModelAttribute MarketDto dto, @RequestParam MultipartFile photo, HttpSession session) {
		String path = session.getServletContext().getRealPath("/upload");

		if (photo.getOriginalFilename().equals(""))
			dto.setPhotoname(null);
		else {
			File file=new File(path + "\\" + mapper.getData(dto.getNum()).getPhotoname());
			file.delete();
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname = "f_" + sdf.format(new Date()) + photo.getOriginalFilename();
			dto.setPhotoname(photoname);

			try {
				photo.transferTo(new File(path + "\\" + photoname));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		mapper.updateMarket(dto);

		return "redirect:list";

	}

}
