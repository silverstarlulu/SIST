package quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {
	static final String ORACLE_URL="jdbc:oracle:thin:@localhost:1521:xe";
	
	public Connection getConnection() {
		
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(ORACLE_URL, "lululala", "pye9918");
		} catch (SQLException e) {
			System.out.println("ㅠㅠ오라클 연결 실패ㅠㅠ"+e.getMessage());
		}
		
		return conn;
	}
	
	/*close가 총 4개 
	 * (conn,stmt)
	 * (conn,stmt,rs)
	 * (conn,prepare stmt)
	 * (conn,prepare stmt,rs)*/
	
	public void dbClose(Statement stmt,Connection conn) {
		try {
			if(stmt!=null) 	stmt.close();
			if(conn!=null) 	conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void dbClose(ResultSet rs,Statement stmt,Connection conn) {
		try {
			if(rs!=null) 	rs.close();
			if(stmt!=null) 	stmt.close();
			if(conn!=null) 	conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn) {
		try {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) 	conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn) {
		try {
			if(rs!=null) 	rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) 	conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
