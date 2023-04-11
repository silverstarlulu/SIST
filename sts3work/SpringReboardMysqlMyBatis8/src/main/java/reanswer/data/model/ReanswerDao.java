package reanswer.data.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReanswerDao implements ReanswerDaoInter {
	
	@Autowired
	SqlSession session;

	@Override
	public void insert_answer(ReanswerDto dto) {
		session.insert("insert_reanswer", dto);
		
	}

	@Override
	public List<ReanswerDto> getNumOfDatas_answer(int num) {
		return session.selectList("getNumOfDatas_reanswer", num);
		
	}

	@Override
	public void delete_answer(int idx) {
		session.delete("delete_reanswer", idx);
		
	}

	@Override
	public int passCheck_answer(int idx, String pass) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("idx", idx);
		map.put("pass", pass);
		
		return session.selectOne("passCheck_reanswer", map);
	}

}
