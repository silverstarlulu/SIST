package spring.db.car;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyCarDao {

	@Autowired
	private SqlSession session;

	// 총 개수
	public int getTotalCount() {
		return session.selectOne("getTotalCount_mycar");
	}

	// 전체 데이터
	public List<MyCarDto> getAllDatas() {
		return session.selectList("getAllDatas_mycar");
	}

	// insert
	public void insertMyCar(MyCarDto dto) {
		session.insert("insert_mycar", dto);
	}

	// getData
	public MyCarDto getData(String num) {
		return session.selectOne("getData_mycar", num);
	}

	// update
	public void updateMyCar(MyCarDto dto) {
		session.update("update_mycar", dto);
	}

	// delete
	public void deleteMyCar(String num) {
		session.delete("delete_mycar", num);
	}
}
