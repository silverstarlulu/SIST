package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyCarDao {

	@Autowired
	MyCarDaoInter carInter;
	
	//insert
	public void insertCar(MycarDto dto) {
		carInter.save(dto);	//id 유무에 따라 자동으로 insert / update
	}
	
	//list
	public List<MycarDto> getAllDatas(){
		return carInter.findAll();
	}
	
	
	//delete
	public void deleteCar(long num) {
		carInter.deleteById(num);
	}
	
	//getData
	public MycarDto getCar(long num) {
		return carInter.getReferenceById(num);
		
	}
	
	//update
	public void updateCar(MycarDto dto) {
		carInter.save(dto);	//id 유무에 따라 자동으로 insert / update
	}
}
