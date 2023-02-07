package day0118;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QuizSawonGroup {

	DbConnect db=new DbConnect();
	
	public void connectSawonGroup() {
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select gender,count(buseo) count,round(avg(pay),0) avgpay,max(pay) maxpay,min(pay) minpay from sawon group by gender";
		
		try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			System.out.println("**사원 성별별로 인원 급여조회**");
			System.out.println("성별\t인원\t평균급여\t최고급여\t최저급여");
			
			while(rs.next()) {
				String gender=rs.getString("gender");
				int count=rs.getInt("count");
				int avgpay=rs.getInt("avgpay");
				int maxpay=rs.getInt("maxpay");
				int minpay=rs.getInt("minpay");
				
				System.out.println(gender+"\t"+count+"\t"+avgpay+"\t"+maxpay+"\t"+minpay);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
		}
		
	}
	
	public static void main(String[] args) {
		QuizSawonGroup quiz=new QuizSawonGroup();
		quiz.connectSawonGroup();

	}

}
