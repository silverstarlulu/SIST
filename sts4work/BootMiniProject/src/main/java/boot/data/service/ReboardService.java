package boot.data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.dto.ReboardDto;
import boot.data.mapper.ReboardMapperInter;

@Service
public class ReboardService implements ReboardServiceInter {

	@Autowired
	ReboardMapperInter mapper;

	@Override
	public int getMaxNum() {
		return mapper.getMaxNum();
	}

	@Override
	public int getTotalCount(String searchColumn, String searchWord) {
		Map<String, String> map = new HashMap<>();

		map.put("searchColumn", searchColumn);
		map.put("searchWord", searchWord);

		return mapper.getTotalCount(map);
	}

	@Override
	public List<ReboardDto> getPagingList(String searchColumn, String searchWord, int start, int perPage) {
		Map<String, Object> map = new HashMap<>();

		map.put("searchColumn", searchColumn);
		map.put("searchWord", searchWord);
		map.put("start", start);
		map.put("perPage", perPage);

		return mapper.getPagingList(map);
	}

	@Override
	public void insertReboard(ReboardDto dto) {

		int num = dto.getNum();
		int regroup = dto.getRegroup();
		int restep = dto.getRestep();
		int relevel = dto.getRelevel();

		if (num == 0) { 							// 새글
			regroup = this.getMaxNum() + 1;
			restep = 0;
			relevel = 0;
		} else { 									// 답글
			//같은 그룹 중 전달받은 restep보다 큰 값은 일괄 1씩 증가
			this.updateRestep(regroup, restep);
			
			//전달받은 값보다 1크게 db 저장
			restep++;
			relevel++;
		}
		
		dto.setNum(num);
		dto.setRegroup(regroup);
		dto.setRestep(restep);
		dto.setRelevel(relevel);

		mapper.insertReboard(dto);
	}

	@Override
	public void updateRestep(int regroup, int restep) {
		Map<String, Integer> map = new HashMap<>();

		map.put("regroup", regroup);
		map.put("restep", restep);

		mapper.updateRestep(map);
	}

	@Override
	public void updateReadcount(int num) {
		mapper.updateReadcount(num);
	}

	@Override
	public ReboardDto getData(int num) {
		return mapper.getData(num);
	}

	@Override
	public void updateReboard(ReboardDto dto) {
		mapper.updateReboard(dto);
	}

	@Override
	public void deleteReboard(int num) {
		mapper.deleteReboard(num);
	}

	@Override
	public void updateLikes(int num) {
		mapper.updateLikes(num);
	}

}
