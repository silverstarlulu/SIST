package spring.upload.dragon;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
	
	
	//�̹��� ������
	@GetMapping("/uploadform2")
	public String form2() {
		return "board/uploadform2";
	}

	@PostMapping("/upload2")
	public ModelAndView read2(@RequestParam String title, @RequestParam ArrayList<MultipartFile> photo,
			HttpServletRequest request) {
		ModelAndView mview = new ModelAndView();

		// ���ε��� ���� ���
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		
		// ���糯¥�ð��̿��Ͽ� ���ϸ� ����
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		ArrayList<String> files=new ArrayList<String>();
		
		// ���ϸ� ���
		for(MultipartFile f:photo) {
			String fileName="p_"+sdf.format(new Date())+"_"+f.getOriginalFilename();
			files.add(fileName);
			
			//���ε�
			try {
				f.transferTo(new File(path+"\\"+fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
		mview.addObject("title", title);
		mview.addObject("files",files);
		mview.addObject("path", path);

		mview.setViewName("board/uploadresult2");

		return mview;
	}
}
