package spring.di.ex2;

public class Person {
	String schoolName;
	MyInfo info;

	public Person(MyInfo info) { // �����ڷ� ����
		super();
		this.info = info;
	}

	public void setSchoolName(String schoolName) { // SETTER�� ����
		this.schoolName = schoolName;
	}

	// ���
	public void write() {
		System.out.println("*** �л����� ��� ***");

		System.out.println("�б���: " + schoolName);
		System.out.println("�̸�: " + info.name);
		System.out.println("����: " + info.age);
		System.out.println("�ּ�: " + info.addr);
	}

}
