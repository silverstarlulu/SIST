package book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import book.data.bookDto;

@Mapper
public interface bookMapperInter {

	public int getTotalCount();
	public void insert_seojum(bookDto dto);
	public List<bookDto> getAllBooks();
}
