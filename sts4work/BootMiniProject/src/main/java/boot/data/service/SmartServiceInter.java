package boot.data.service;

import java.util.List;

import boot.data.dto.SmartDto;

public interface SmartServiceInter {
	
	public void insertShop(SmartDto dto);
	public List<SmartDto> getShopList(int start, int perPage);
	public SmartDto getSangpum(int num);
	public void deleteShop(int num);
	public int getTotalCount();

}
