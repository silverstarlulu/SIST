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

		// 업로드할 실제 경로
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		String fileName = photo.getOriginalFilename(); // 업로드한 파일 명

		// 현재날짜와 파일명 저장
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		if (!fileName.equals("")) {
			fileName = "p_" + sdf.format(new Date()) + "_" + fileName;

			// 실제 경로인 path에 업로드
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
			fileName = "no photo";	//업로드 안했을 경우
		}

		mview.addObject("title", title);
		mview.addObject("fileName", fileName);
		mview.addObject("path", path);

		mview.setViewName("board/uploadresult1");

		return mview;
	}
	
	
	//이미지 여러개
	@GetMapping("/uploadform2")
	public String form2() {
		return "board/uploadform2";
	}

	@PostMapping("/upload2")
	public ModelAndView read2(@RequestParam String title, @RequestParam ArrayList<MultipartFile> photo,
			HttpServletRequest request) {
		ModelAndView mview = new ModelAndView();

		// 업로드할 실제 경로
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		
		// 현재날짜시간이용하여 파일명 저장
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		ArrayList<String> files=new ArrayList<String>();
		
		// 파일명 담기
		for(MultipartFile f:photo) {
			String fileName="p_"+sdf.format(new Date())+"_"+f.getOriginalFilename();
			files.add(fileName);
			
			//업로드
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
