package reanswer.data.model;

import java.util.List;

public interface ReanswerDaoInter {
	public void insert_answer(ReanswerDto dto);

	public List<ReanswerDto> getNumOfDatas_answer(int num);

	public int passCheck_answer(int idx, String pass);

	public void delete_answer(int idx);
}
