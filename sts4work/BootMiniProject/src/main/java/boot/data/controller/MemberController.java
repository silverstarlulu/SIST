package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	@GetMapping("/member/list")
	public String memberList(Model model) {

		model.addAttribute("count", service.getAllMembers().size());
		model.addAttribute("list", service.getAllMembers());

		return "/member/memberList";
	}

	@GetMapping("/member/form")
	public String memberForm() {
		return "/member/memberForm";
	}

	// 아이디 중복체크
	@GetMapping("/member/idCheck")
	@ResponseBody
	public HashMap<String, Integer> idCheck(@RequestParam String idCheck) {
		HashMap<String, Integer> map = new HashMap<>();

		int result = service.getSearchId(idCheck);

		map.put("result", result);

		return map;

	}

	@PostMapping("/member/insert")
	public String insert_member(@ModelAttribute MemberDto dto, MultipartFile myPhoto, HttpSession session) {
		System.out.println(dto.getName());
		System.out.println(dto.getAddr());
		
		String realPath = session.getServletContext().getRealPath("/photo");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String photoName = "photo_" + sdf.format(new Date()) + "_" + myPhoto.getOriginalFilename();
		dto.setPhoto(photoName);

		
		try {
			myPhoto.transferTo(new File(realPath + "\\" + photoName));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		service.insert_Member(dto);

		//return "/member/gaipSuccess";
		return "redirect:list";
	}
	
	@GetMapping("/member/myinfo")
	public String myinfo(Model model) {
		List<MemberDto> list=service.getAllMembers();
		
		model.addAttribute("list", list);
		
		return "/member/myinfo";
	}

}