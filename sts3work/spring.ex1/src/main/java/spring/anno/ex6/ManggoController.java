package spring.anno.ex6;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ManggoController {
	//@Autowired
	// �������̽� Manggo ���� Ŭ������ �ϳ��� ���� �ڵ����� o, but, �������� ��� ���� �߻�
	@Resource(name="t_manggo")
	Manggo manggo;
	
	public void writeManggo() {
		System.out.println("���� �����ϴ� ������ **");
		manggo.writeManggoName();
	}
}
