package reboard.data.model;

import java.util.List;

public interface ReboardDaoInter {
	public int getTotalCount();
	
	public int getMaxNum();
	public void updateRestep(int group,int restep);
	public void insertReboard(ReboardDto dto);
	public List<ReboardDto> getList(int start, int perpage);
}
