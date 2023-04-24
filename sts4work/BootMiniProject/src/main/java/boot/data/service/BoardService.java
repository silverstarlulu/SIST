package boot.data.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.dto.BoardDto;
import boot.data.mapper.BoardMapperInter;

@Service
public class BoardService implements BoardServiceInter {

	@Autowired
	BoardMapperInter mapperInter;

	@Override
	public int getTotalCount() {
		return mapperInter.getTotalCount();
	}

	@Override
	public void updateReadCount(String num) {
		mapperInter.updateReadCount(num);
	}

	@Override
	public BoardDto getData(String num) {
		return mapperInter.getData(num);
	}

	@Override
	public int getMaxNum() {
		return mapperInter.getMaxNum();
	}

	@Override
	public List<BoardDto> getList(int start, int perPage) {
		HashMap<String, Integer> map = new HashMap<>();
		
		map.put("start", start);
		map.put("perPage", perPage);

		return mapperInter.getList(map);
	}

	@Override
	public void insertBoard(BoardDto dto) {
		mapperInter.insertBoard(dto);
	}

}
