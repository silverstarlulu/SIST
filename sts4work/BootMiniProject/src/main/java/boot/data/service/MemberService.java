package boot.data.service;

import java.util.List;

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

}
