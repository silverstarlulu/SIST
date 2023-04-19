package boot.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import boot.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	public List<MemberDto> getAllMembers();
	public void insert_Member(MemberDto dto);
	public int getSearchId(String id);
}
