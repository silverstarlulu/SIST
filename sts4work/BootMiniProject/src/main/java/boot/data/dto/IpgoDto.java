package boot.data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("IpgoDto")
@Data
public class IpgoDto {
	
	private String num;
	private String sangpum;
	private String photoname;
	private String dimage;
	private int price;
	private Timestamp ipgoday;
	

}
