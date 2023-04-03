package spring.anno.ex4;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("logic") // ����Ʈ�� logicController �� ���
public class LogicController {
	
	@Autowired //<constructor-arg ref="mydao"/> ����
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
