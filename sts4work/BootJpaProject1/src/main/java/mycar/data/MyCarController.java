package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyCarController {

	@Autowired
	MyCarDao dao;

	@GetMapping("/")
	public String index() {
		return "redirect:/car/carlist";
	}

	@GetMapping("/car/carform")
	public String carform() {
		return "caraddform";
	}

	@PostMapping("/car/insert")
	public String carInsert(@ModelAttribute MycarDto dto) {
		dao.insertCar(dto);

		return "redirect:/car/carlist";
	}

	@GetMapping("/car/carlist")
	public ModelAndView carList() {
		ModelAndView mview = new ModelAndView();

		List<MycarDto> list = dao.getAllDatas();

		mview.addObject("totalCount", list.size());
		
		mview.addObject("list", list);
		mview.setViewName("carlist");
		
		return mview;
	}
	
	@GetMapping("/car/delete")
	public String carDelete(@RequestParam long num) {
		dao.deleteCar(num);
		
		return "redirect:/car/carlist";
	}
	
	@GetMapping("/car/carupdateform")
	public ModelAndView updateForm(@RequestParam long num) {
		MycarDto dto= dao.getCar(num);
		
		ModelAndView mview = new ModelAndView();
		
		mview.addObject("dto", dto);
		mview.setViewName("carupdateform");
		
		return mview;
	}
	
	@PostMapping("/car/update")
	public String carUpdate(@ModelAttribute MycarDto dto) {
		dao.updateCar(dto);
		
		return "redirect:/car/carlist";
	}

}
