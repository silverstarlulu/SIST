package sawon.data;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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

@Controller
public class SawonController {

	@Autowired
	SawonDaoInter dao;

	@GetMapping("/sawon/form")
	public String sawonform() {
		return "sawon/addform";
	}

	@GetMapping("/sawon/list")
	public ModelAndView sawonlist(@RequestParam(defaultValue = "name") String title, @RequestParam(required =false) String search) {
		ModelAndView mview = new ModelAndView();
		
		Map<String, String> map=new HashMap<String, String>();
		map.put("title", title);
		map.put("search", search);

		mview.addObject("totalCount", dao.getTotalCount());
		mview.addObject("list", dao.getAllSawons(map));

		mview.setViewName("sawon/sawonlist");

		return mview;
	}

	@PostMapping("/sawon/insert")
	public String sawonInsert(@ModelAttribute SawonDto dto, @RequestParam MultipartFile upload, HttpSession session) {
		// upload : insert에 사용한 name

		String path = session.getServletContext().getRealPath("/WEB-INF/image/");
		System.out.println(path);

		// DTO에 담을 변수
		String photoname;

		if (upload.getOriginalFilename().equals(""))
			photoname = "none image";
		else {
			photoname = upload.getOriginalFilename();

			try {
				upload.transferTo(new File(path + "\\" + photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//dto에 업로드한 photoname 넣어주기
		dto.setPhoto(photoname);
		
		dao.insertSawon(dto);

		return "redirect:list";
	}
	
	@GetMapping("/sawon/updateform")
	public String sawonUform(@RequestParam String num, Model model) {
		model.addAttribute("dto", dao.getSawon(num));
		return "sawon/updateform";
	}
	
	@PostMapping("/sawon/update")
	public String sawonUpdate(@ModelAttribute SawonDto dto, @RequestParam MultipartFile upload, HttpSession session) {
		String path = session.getServletContext().getRealPath("/WEB-INF/image/");
		System.out.println(path);

		// DTO에 담을 변수
		String photoname;

		if (upload.getOriginalFilename().equals(""))
			photoname = null;
		else {
			photoname = upload.getOriginalFilename();

			try {
				upload.transferTo(new File(path + "\\" + photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//dto에 업로드한 photoname 넣어주기
		dto.setPhoto(photoname);
		
		dao.updateSawon(dto);

		return "redirect:list";
	}
	
	@GetMapping("/sawon/delete")
	public String sawonDelete(@RequestParam String num, HttpSession session) {
		String photo=dao.getSawon(num).getPhoto();
		
		if(!photo.equals("none image")) {
			String path=session.getServletContext().getRealPath("/WEB-INF/image");
			
			File file=new File(path+"\\"+photo);
			file.delete();
		}
		
		dao.deleteSawon(num);
		
		return "redirect:list";
	}

}
