package day0119;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.NumberFormat;

public class SawonRead {

	DbConnect db=new DbConnect();
	
	public void listSawon() {
		String sql="select buseo,count(*) count,round(avg(pay),0) pay from sawon group by buseo";
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			System.out.println("부서명\t인원수\t평균급여");
			
			while(rs.next()) {
				String buseo=rs.getString("buseo");
				int inwon=rs.getInt("count");
				int avg_pay=rs.getInt("pay");
				
				NumberFormat nf=NumberFormat.getCurrencyInstance();
				
				System.out.println(buseo+"\t"+inwon+"명\t"+nf.format(avg_pay));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
		}
		
		
	}
	
	public static void main(String[] args) {
		SawonRead sr=new SawonRead();
		sr.listSawon();
	}

}
