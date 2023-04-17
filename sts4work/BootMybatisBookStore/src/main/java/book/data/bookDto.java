package book.data;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("bookDto")
public class bookDto {

	private String num;
	private String bookname;
	private String bookwriter;
	private String bookcompany;
	private int bookprice;
	private String bookphoto;
	private Timestamp ipgoday;
	
	
}
