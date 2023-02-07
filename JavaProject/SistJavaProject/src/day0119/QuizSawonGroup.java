package day0119;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QuizSawonGroup {

	DbConnect db=new DbConnect();
	
	public void connectSawonGroup() {
		String sql="select gender 성별,count(*) 인원수,to_char(avg(pay),'L999,999,999') 평균급여,to_char(max(pay),'L999,999,999') 최고급여,to_char(min(pay),'L999,999,999') 최저급여 from sawon group by gender";
	
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			System.out.println("성별\t인원수\t평균급여\t최고급여\t최저급여");
			System.out.println("============================================");
			
			while(rs.next()) {
				String gender=rs.getString("성별");
				int count=rs.getInt("인원수");
				String avg_pay=rs.getString("평균급여");
				String max_pay=rs.getString("최고급여");
				String min_pay=rs.getString("최저급여");
				
				System.out.println(gender+"\t"+count+"명\t"+avg_pay+"\t"+max_pay+"\t"+min_pay);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
		}
	}
	
	public static void main(String[] args) {
		//성별	인원수	평균급여	최고급여	최저급여
		//to_char 이용, 천단위 구분기호, 화폐단위
		QuizSawonGroup quiz=new QuizSawonGroup();
		quiz.connectSawonGroup();
	}

}
