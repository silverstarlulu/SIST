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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.IpgoDto;
import boot.data.mapper.IpgoMapperInter;

@Controller
public class IpgoController {

	@Autowired
	IpgoMapperInter mapper;

	@GetMapping("/")
	public String root() {
		return "/layout/main";
	}

	@GetMapping("/ipgo/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();

		List<IpgoDto> list = mapper.getAllIpgos();

		for (IpgoDto dto : list) {
			if (dto.getPhotoname() != null) {
				String[] photos = dto.getPhotoname().split(",");
				dto.setDimage(photos[0]);
			}
		}

		mview.addObject("count", mapper.getTotalCount());
		mview.addObject("list", list);

		mview.setViewName("/sub/ipgo/ipgoList");

		return mview;
	}

	@GetMapping("/ipgo/form")
	public String form() {

		return "/sub/ipgo/ipgoForm";
	}

	@PostMapping("/ipgo/insert")
	public String insertIpgo(@ModelAttribute IpgoDto dto, @RequestParam ArrayList<MultipartFile> upload,
			HttpSession session) {

		String realPath = session.getServletContext().getRealPath("/photo");

		String uploadName = "";
		int idx = 1;

		if (upload.get(0).getOriginalFilename().equals(""))
			uploadName = null;
		else {
			for (MultipartFile f : upload) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				String fName = idx++ + sdf.format(new Date()) + f.getOriginalFilename();
				uploadName += fName + ",";

				try {
					f.transferTo(new File(realPath + "\\" + fName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			uploadName = uploadName.substring(0, uploadName.length() - 1);
		}

		dto.setPhotoname(uploadName);

		mapper.insertIpgo(dto);

		return "redirect:list";
	}
	
	//오시는 길
	@GetMapping("/road/map")
	public String map() {
		return "/sub/road/map";
	}
}
