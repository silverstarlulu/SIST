package boot.data.service;

import java.util.List;

import boot.data.dto.MemberDto;

public interface MemberServiceInter {
	public List<MemberDto> getAllMembers();

	public void insert_Member(MemberDto dto);

	public int getSearchId(String id);

	public String getNameById(String id);

	public int loginIdPassCheck(String id, String pass);

	public MemberDto getDataById(String id);
	
	public void delete_Member(String num);

}
