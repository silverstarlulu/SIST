package sawon.data;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SawonDao implements SawonDaoInter {

	@Autowired
	private SqlSession session;

	@Override
	public int getTotalCount() {
		return session.selectOne("getTotalCount_sawon");
	}

	@Override
	public void insertSawon(SawonDto dto) {
		session.insert("insert_sawon", dto);
	}

	@Override
	public List<SawonDto> getAllSawons(Map<String, String> map) {
		List<SawonDto> list = new ArrayList<SawonDto>();

		return session.selectList("getAllDatas_sawon", map);
	}

	@Override
	public SawonDto getSawon(String num) {
		return session.selectOne("getData_sawon", num);
	}

	@Override
	public void updateSawon(SawonDto dto) {
		session.update("update_sawon", dto);

	}

	@Override
	public void deleteSawon(String num) {
		session.delete("delete_sawon", num);

	}

}
