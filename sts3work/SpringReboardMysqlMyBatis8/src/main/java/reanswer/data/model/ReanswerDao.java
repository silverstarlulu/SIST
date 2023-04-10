package reanswer.data.model;

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

}
