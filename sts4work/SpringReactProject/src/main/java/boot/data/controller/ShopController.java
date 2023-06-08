package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import boot.data.dto.ShopDto;
import boot.data.service.ShopService;

@RestController
@CrossOrigin
@RequestMapping("shop")
public class ShopController {

	@Autowired
	private ShopService service;

	// 폼의 이미지만 업로드가 되게(미리보기 위해)

	String photoName; // 리액트에서 업로드 한 (변경된) 이미지명

	@PostMapping("/upload")
	public String fileUpload(@RequestParam MultipartFile uploadFile, HttpSession session) {

		// 파일명
		String fileName = uploadFile.getOriginalFilename();

		// 업로드 할 폴더위치
		String path = session.getServletContext().getRealPath("/save");

		// 직전 이미지 삭제 후 업로드되도록
		File file = new File(path + "/" + photoName);

		if (file.exists())
			file.delete();

		// 파일명 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		photoName = "f_" + sdf.format(new Date()) + fileName;

		System.out.println("fileName: " + fileName + "===>" + photoName);
		
		//save에 업로드
		try {
			uploadFile.transferTo(new File(path+"/"+photoName));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return photoName;
	}
	
	//insert
	@PostMapping("/insert")
	public void insertShop(@RequestBody ShopDto dto) {
		//json으로 보낸 것을 java class로 @@RequestBody 변경해야하므로 사용
		
		//업로드한 사진명
		dto.setPhoto(photoName);
		
		service.insertShop(dto);
	}

}
