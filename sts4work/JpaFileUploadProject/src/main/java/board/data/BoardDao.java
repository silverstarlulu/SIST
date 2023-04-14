package board.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {

	@Autowired
	BoardDaoInter boardInter;

	// insert
	public void insert_board(BoardDto dto) {
		boardInter.save(dto);

	}

	// getAllDatas
	public List<BoardDto> getAllDatas() {
		// return boardInter.findAll();
		return boardInter.findAll(Sort.by(Sort.Direction.DESC, "num"));
	}
	
	//getData
	public BoardDto getData(long num) {
		return boardInter.getReferenceById(num);
	}
	
	//update
	public void update_board(BoardDto dto) {
		boardInter.save(dto);
	}
	
	//delete
	public void delete_board(long num) {
		boardInter.deleteById(num);
	}
}
