package board.controller;

import java.io.File;
import java.io.IOException;

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

import board.data.BoardDao;
import board.data.BoardDto;

@Controller
public class BoardController {

	@Autowired
	BoardDao dao;

	@GetMapping("/")
	public String home() {
		return "redirect:/board/list";
	}

	@GetMapping("/board/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();

		mview.addObject("list", dao.getAllDatas());
		mview.addObject("count", dao.getAllDatas().size());

		mview.setViewName("board_list");
		return mview;
	}

	@GetMapping("/board/writeform")
	public String writeform() {
		return "board_addForm";
	}

	@PostMapping("/board/insert")
	public String insert(@ModelAttribute BoardDto dto, @RequestParam MultipartFile upload, HttpSession session) {

		/*
		 * if (!upload.isEmpty()) { System.out.println("파일명: " +
		 * upload.getOriginalFilename()); }
		 */

		// 업로드 된 실제 경로
		String realPath = session.getServletContext().getRealPath("/save");
		System.out.println(realPath);

		// 사진을 실제경로에 업로드 시킨 후 그 파일명을 dto photo에 넣음

		String uploadName = upload.getOriginalFilename();
		if (upload.isEmpty())
			dto.setPhoto("no photo"); // 사진 안 넣을 경우
		else {
			dto.setPhoto(uploadName);

			// 실제 업로드
			try {
				upload.transferTo(new File(realPath + "\\" + uploadName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		dao.insert_board(dto);

		return "redirect:list";
	}

	@GetMapping("/board/detail")
	public String detailPage(@RequestParam long num, Model model) {

		BoardDto dto = dao.getData(num);

		model.addAttribute("dto", dto);

		return "board_detail";
	}

	@GetMapping("/board/delete")
	public String delete(@RequestParam long num, HttpSession session) {

		String photo = dao.getData(num).getPhoto();

		if (!photo.equals("no photo")) {
			String realPath = session.getServletContext().getRealPath("save/");
			File file = new File(realPath + "\\" + photo);
			//System.out.println(file);
			file.delete();
		}

		dao.delete_board(num);

		return "redirect:/board/list";
	}

	@GetMapping("/board/updateform")
	public String updateform(@RequestParam long num, Model model) {
		BoardDto dto = dao.getData(num);

		model.addAttribute("dto", dto);

		return "board_updateForm";
	}

	@PostMapping("/board/update")
	public String update(@ModelAttribute BoardDto dto, @RequestParam MultipartFile upload, HttpSession session) {

		// 업로드 된 실제 경로
		String realPath = session.getServletContext().getRealPath("/save");
		System.out.println(realPath);

		String uploadName = upload.getOriginalFilename();
		
		
		if (!uploadName.equals("")) {

			dto.setPhoto(uploadName);
			
			File file = new File(realPath + "\\" + dao.getData(dto.getNum()).getPhoto());
			//System.out.println(file);
			file.delete();

			// 실제 업로드
			try {
				upload.transferTo(new File(realPath + "\\" + uploadName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			dto.setPhoto(dao.getData(dto.getNum()).getPhoto());
		}

		dao.update_board(dto);

		return "redirect:detail?num=" + dto.getNum();
	}

}
