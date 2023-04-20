package boot.data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.dto.MemberDto;
import boot.data.mapper.MemberMapperInter;

@Service
public class MemberService implements MemberServiceInter {

	@Autowired
	MemberMapperInter mapper;

	@Override
	public List<MemberDto> getAllMembers() {
		return mapper.getAllMembers();
	}

	@Override
	public void insert_Member(MemberDto dto) {
		mapper.insert_Member(dto);
	}

	@Override
	public int getSearchId(String id) {
		return mapper.getSearchId(id);
	}

	@Override
	public String getNameById(String id) {
		return mapper.getNameById(id);
	}

	@Override
	public int loginIdPassCheck(String id, String pass) {
		HashMap<String, String> map=new HashMap<>();
		
		map.put("id", id);
		map.put("pass", pass);
		
		return mapper.loginIdPassCheck(map);
	}

	@Override
	public MemberDto getDataById(String id) {
		return mapper.getDataById(id);
	}

	@Override
	public void delete_Member(String num) {
		mapper.delete_Member(num);
		
	}

}
