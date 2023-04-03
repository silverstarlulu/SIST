package spring.upload.dragon;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class PhotoUploadController {

	@GetMapping("/uploadform1")
	public String form1() {
		return "board/uploadform1";
	}

	@PostMapping("/upload1")
	public ModelAndView read1(@RequestParam String title, @RequestParam MultipartFile photo,
			HttpServletRequest request) {
		ModelAndView mview = new ModelAndView();

		// ���ε��� ���� ���
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		String fileName = photo.getOriginalFilename(); // ���ε��� ���� ��

		// ���糯¥�� ���ϸ� ����
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		if (!fileName.equals("")) {
			fileName = "p_" + sdf.format(new Date()) + "_" + fileName;

			// ���� ����� path�� ���ε�
			try {
				photo.transferTo(new File(path + "\\" + fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			fileName = "no photo";	//���ε� ������ ���
		}

		mview.addObject("title", title);
		mview.addObject("fileName", fileName);
		mview.addObject("path", path);

		mview.setViewName("board/uploadresult1");

		return mview;
	}

}
