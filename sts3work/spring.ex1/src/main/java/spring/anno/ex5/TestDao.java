package spring.anno.ex5;

import org.springframework.stereotype.Component;

@Component
public class TestDao {
	public void insert(String name) {
		System.out.println(name + "님 DB에 저장");
	}

	public void select(String name) {
		System.out.println(name + "님은 대한민국 여성입니다.");
	}

	public void delete(String num) {
		System.out.println(num + "번 데이터 삭제 완료");
	}
}
