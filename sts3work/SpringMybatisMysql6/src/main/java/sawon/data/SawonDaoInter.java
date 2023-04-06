package sawon.data;

import java.util.List;
import java.util.Map;

public interface SawonDaoInter {
	public int getTotalCount();
	
	public void insertSawon(SawonDto dto);
	
	public List<SawonDto> getAllSawons(Map<String, String> map);
	
	public SawonDto getSawon(String num);
	public void updateSawon(SawonDto dto);
	
	public void deleteSawon(String num);
}
