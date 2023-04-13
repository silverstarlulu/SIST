package mycar.data;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name = "mycar")	//자동으로 mysql에 mycar 테이블 생성(변수 변경 시 자동 수정)
@Data
public class MycarDto {
	
	@Id	//각 엔터티 구별하는 식별id 갖도록 설계 (시퀀스)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long num;
	
	@Column(name = "cname")
	private String carname;
	
	@Column	//이름 같을 시 생략 o
	private int carprice;
	
	@Column
	private String carcolor;
	
	@Column
	private String carguip;
	
	@CreationTimestamp	//엔터티가 생성되는 시점의 시간 자동등록 (now 와 동일)
	@Column(updatable = false)	//수정 시 이 컬럼은 수정 x
	private Timestamp guipday;
}
