package quiz.jshop.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JpaShopDao {

	@Autowired
	JpaShopDaoInter jShopInter;
	
	public void insertJshop(JpaShopDto dto) {
		jShopInter.save(dto);
	}
	
	public List<JpaShopDto> shopList(){
		return jShopInter.findAll();
	}
	
	public JpaShopDto getData(int num) {
		return jShopInter.getReferenceById(num);
	}
	
	public void updateJshop(JpaShopDto dto) {
		jShopInter.save(dto);
	}
	
	public void deleteJshop(int num) {
		jShopInter.deleteById(num);
	}
}
