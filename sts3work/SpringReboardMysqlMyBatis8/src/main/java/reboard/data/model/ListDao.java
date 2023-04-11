package reboard.data.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ListDao {

	@Autowired
	SqlSession session;
	
	public List<ReboardDto> getAllList(){
		return session.selectList("getAllList");
		
	}
}
