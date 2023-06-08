package boot.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.dto.ShopDto;
import boot.data.mapper.ShopMapper;

@Service
public class ShopService {
	
	@Autowired
	private ShopMapper mapper;
	
	public void insertShop(ShopDto dto) {
		mapper.insertShop(dto);

	}

	public List<ShopDto> getShopDatas() {
		return mapper.getShopDatas();
	}

}
