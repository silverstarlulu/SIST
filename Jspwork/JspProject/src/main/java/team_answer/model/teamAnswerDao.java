package team_answer.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import oracle.db.DbConnect;
import team.model.TeamDto;

public class teamAnswerDao {

	DbConnect db = new DbConnect();

	public void insertTeam(teamAnswerDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into team_answer values(seq_1.nextval,?,?,?,sysdate)";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getMyname());
			pstmt.setString(2, dto.getDriver());
			pstmt.setString(3, dto.getHp());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}

	public ArrayList<teamAnswerDto> getAllTeamDatas() {
		ArrayList<teamAnswerDto> list = new ArrayList<>();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from team_answer order by num";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				teamAnswerDto dto = new teamAnswerDto();
				dto.setNum(rs.getString("num"));
				dto.setMyname(rs.getString("name"));
				dto.setDriver(rs.getString("driver"));
				dto.setHp(rs.getString("hp"));
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
