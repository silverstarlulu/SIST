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
		int num = dto.getNum(); 			// 0 : 새글 / 1보다 큰 값 : 답글
		int regroup = dto.getRegroup();
		int restep = dto.getRestep();
		int relevel = dto.getRelevel();

		if (num == 0) { 					// 새글
			regroup = getMaxNum() + 1; 		// num의 최대값에 +1
			restep = 0;
			relevel = 0;
		} else { 							// 답글
			updateRestep(regroup, restep);	// 같은 그룹 중 전달받은 restep보다 큰 글들을 +1
			restep++; relevel++;			// 전달받은 step과 level은 +1
		}
		
		// 바뀐 값들을 다시 dto에 담기
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
