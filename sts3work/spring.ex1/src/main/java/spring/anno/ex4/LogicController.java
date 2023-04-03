package spring.anno.ex4;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("logic") // 디폴트는 logicController 로 등록
public class LogicController {
	
	@Autowired //<constructor-arg ref="mydao"/> 역할
	// @Resource(name = "myDao")
	DaoInter daoInter;

	public LogicController(MyDao dao) {
		this.daoInter = dao;
	}
	
	//insert
	public void insert(String str) {
		daoInter.insertData(str);
	}
	
	//delete
	public void delete(String num) {
		daoInter.deleteData(num);
	}
}
