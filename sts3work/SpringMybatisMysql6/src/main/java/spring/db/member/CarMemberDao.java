package spring.db.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CarMemberDao {

	@Autowired
	private SqlSession session;

	public int getTotalCount() {
		return session.selectOne("totalCount_carMember");
	}

	public void insert_member(CarMemberDto dto) {
		session.insert("insert_carMember", dto);
	}

	public List<CarMemberDto> getAllDatas_member() {
		return session.selectList("getAllDatas_carMember");
	}

	public CarMemberDto getData_member(String num) {
		return session.selectOne("getData_carMemeber", num);
	}
	
	public void update_member(CarMemberDto dto) {
		session.update("update_carMember", dto);
	}
	
	public void delete_member(String num) {
		session.delete("delete_carMember", num);
	}
}
