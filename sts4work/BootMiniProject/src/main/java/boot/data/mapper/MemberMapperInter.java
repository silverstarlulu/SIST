package boot.data.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import boot.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	public List<MemberDto> getAllMembers();

	public void insert_Member(MemberDto dto);

	public int getSearchId(String id);

	public String getNameById(String id);

	public int loginIdPassCheck(HashMap<String, String> map);

	public MemberDto getDataById(String id);
	
	public void delete_Member(String num);
	
	public void update_Member(MemberDto dto);
	
	public void update_Photo(Map<String, String> map);
	
	public MemberDto getDataByNum(String num);

}
