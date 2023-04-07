package reboard.data.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReboardDao implements ReboardDaoInter {

	@Autowired
	private SqlSession session;

	@Override
	public int getTotalCount() {
		return session.selectOne("getTotalCount_reboard");
	}

	@Override
	public int getMaxNum() {
		return session.selectOne("MaxNum_reboard");
	}

	@Override
	public void updateRestep(int regroup, int restep) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("regroup", regroup);
		map.put("restep", restep);

		session.update("updateStep_reboard", map);

	}

	@Override
	public void insertReboard(ReboardDto dto) {
		int num = dto.getNum(); 			// 0 : ���� / 1���� ū �� : ���
		int regroup = dto.getRegroup();
		int restep = dto.getRestep();
		int relevel = dto.getRelevel();

		if (num == 0) { 					// ����
			regroup = getMaxNum() + 1; 		// num�� �ִ밪�� +1
			restep = 0;
			relevel = 0;
		} else { 							// ���
			updateRestep(regroup, restep);	// ���� �׷� �� ���޹��� restep���� ū �۵��� +1
			restep++; relevel++;			// ���޹��� step�� level�� +1
		}
		
		// �ٲ� ������ �ٽ� dto�� ���
		dto.setRegroup(regroup);
		dto.setRestep(restep);
		dto.setRelevel(relevel);
		
		session.insert("insert_reboard", dto);

	}

	@Override
	public List<ReboardDto> getList(int start, int perpage) {
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return session.selectList("getAllPaging_reboard", map);
	}

}
