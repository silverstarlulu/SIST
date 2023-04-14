package board.data;

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
@Table(name = "jboard")
@Data
public class BoardDto {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long num;

	@Column(name = "j_writer", updatable = false)
	private String writer;

	@Column(name = "j_subject")
	private String subject;

	@Column(name = "j_content")
	private String content;

	@Column(name = "j_photo")
	private String photo;

	@CreationTimestamp
	@Column(name = "j_writeday", updatable = false)
	private Timestamp writeday;
}
