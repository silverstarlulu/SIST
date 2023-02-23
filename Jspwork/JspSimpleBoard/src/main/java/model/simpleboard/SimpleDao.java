package model.simpleboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import mysql.db.DbConnect;

public class SimpleDao {
	DbConnect db = new DbConnect();

	public void insertBoard(SimpleDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into simpleboard values(null,?,?,?,?,?,0,now())";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getImgname());
			pstmt.setString(5, dto.getPass());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	public List<SimpleDto> getAllBoardDatas() {
		List<SimpleDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from simpleboard order by num desc";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SimpleDto dto = new SimpleDto();

				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setPass(rs.getString("pass"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));

				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return list;
	}

	public SimpleDto getData(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		SimpleDto dto = new SimpleDto();

		String sql = "select * from simpleboard where num=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setPass(rs.getString("pass"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}

	// 조회수
	public void updateReadCount(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update simpleboard set readcount=readcount+1 where num=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	// 비밀번호 일치 시에만 수정 -> num, pass 보내서 true, false 확인
	public boolean isEqualPass(String num, String pass) {
		boolean result = false;

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select count(*) from simpleboard where num=? and pass=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.setString(2, pass);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getInt(1) == 1)
					result = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return result;
	}

	public void updateBoard(SimpleDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update simpleboard set subject=?,content=?,imgname=? where num=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getImgname());
			pstmt.setString(4, dto.getNum());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

//	//내가한거
//	public void deleteBoard(SimpleDto dto) {
//		Connection conn = db.getConnection();
//		PreparedStatement pstmt = null;
//
//		String sql = "delete from simpleboard where num=?";
//
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, dto.getNum());
//
//			pstmt.execute();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			db.dbClose(pstmt, conn);
//		}
//	}

	// 쌤이한거
	public void deleteBoard(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "delete from simpleboard where num=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	// 페이징 처리 -> totalCount(), getList(start, perpage) 필요
	// totalCount()
	public int getTotalCount() {
		int n = 0;

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select count(*) from simpleboard";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next())
				n = rs.getInt(1);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return n;
	}

	// getList(start, perpage)
	public List<SimpleDto> getList(int start, int perpage) {
		List<SimpleDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from simpleboard order by num desc limit ?,?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				SimpleDto dto = new SimpleDto();

				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setPass(rs.getString("pass"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));

				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return list;
	}
}
