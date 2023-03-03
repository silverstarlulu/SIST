package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.GuestDto;
import mysql.db.DbConnect;

public class GuestDao {
	DbConnect db = new DbConnect();

	// insert
	public void insertGuest(GuestDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into guest(myid,content,photoname,writeday) values(?,?,?,now())";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMyid());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getPhotoname());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}

	public int getTotalCount() {
		int n = 0;

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select count(*) from guest";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				n = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return n;
	}

	// 페이지에서 필요한만큼만 페이징 처리하며 리턴
	public List<GuestDto> getList(int start, int perpage) {
		List<GuestDto> list = new Vector<>();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from guest order by num desc limit ?,?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				GuestDto dto = new GuestDto();

				dto.setNum(rs.getString("num"));
				dto.setMyid(rs.getString("myid"));
				dto.setContent(rs.getString("content"));
				dto.setPhotoname(rs.getString("photoname"));
				dto.setChu(rs.getInt("chu"));
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

	// delete
	public void deleteGuest(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "delete from guest where num=?";

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

	public GuestDto getData(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from guest where num=?";

		GuestDto dto = new GuestDto();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setMyid(rs.getString("myid"));
				dto.setContent(rs.getString("content"));
				dto.setPhotoname(rs.getString("photoname"));
				dto.setChu(rs.getInt("chu"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

		return dto;
	}
}
