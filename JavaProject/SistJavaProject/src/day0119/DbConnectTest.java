package day0119;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnectTest {

	static final String URL="jdbc:oracle:thin:@localhost:1521:xe";
	
	//불러오기 메서드
	public void connectSawon() {
		Connection conn=null;		//메서드에서는 초기값 안주면 에러나므로 null
		Statement stmt=null;		//insert, update, delete는 conn+stmp까지만 필요
		ResultSet rs=null;			//select 는 rs까지 필요
		
		String sql="select * from sawon order by num";
		
		try {
			conn=DriverManager.getConnection(URL, "dragon", "a1234");		//connection 성공
			System.out.println("~!~!!!~~!~!클라우드의 오라클 서버에 연결 성공~!~!!~!~!~!");
			
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			//하나만 가져올 때 
			//ex) 수정할 때 , 제목을 눌러서 해당 넘버값만 필요할 때
			
			//여러줄 불러올 경우 while (대부분)
			//rs.next() 이용 -> 다음 데이터로 이동하면서 true 면 반환, 더 이상 데이터가 없을 때까지(false가 아닐 때까지)
			while(rs.next()) {
				//DB로 부터 데이터 가져옴
				int num=rs.getInt("num"); 				//열(1)을 쓰거나 라벨(num -> db명과 일치)
				String name=rs.getString("name");
				String gender=rs.getString("gender");
				String buseo=rs.getString("buseo");
				int pay=rs.getInt("pay");
				
				System.out.println(num+"\t"+name+"\t"+gender+"\t"+buseo+"\t"+pay);
			}
			
		} catch (SQLException e) {
			System.out.println("ㅠㅠㅠㅠㅠ클라우드 오라클 서버에 연결 실패ㅠㅠㅠㅠㅠ"+e.getMessage());
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void connectFood() {
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select j.fno,j.name,f.food,f.price,f.shop,f.loc,j.addr from jumun j, food f where j.fno=f.fno order by name";
	
		try {
			conn=DriverManager.getConnection(URL,"dragon","a1234");
			System.out.println("~연결 성공~\n");
			
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
	
			System.out.println("[주문고객리스트]");
			System.out.println("주문번호\t주문자\t음식명\t가격\t상호명\t가게위치\t주문자위치");
			System.out.println("========================================================");
			
			while(rs.next()) {
				int fno=rs.getInt("fno");
				String name=rs.getString("name");
				String food=rs.getString("food");
				int price=rs.getInt("price");
				String shop=rs.getString("shop");
				String loc=rs.getString("loc");
				String addr=rs.getString("addr");
				
				System.out.println(fno+"\t"+name+"\t"+food+"\t"+price+"\t"+shop+"\t"+loc+"\t"+addr);
			}
			
		} catch (SQLException e) {
			System.out.println("ㅠ서버연결실패ㅠ"+e.getMessage());
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	
	public static void main(String[] args) {
		DbConnectTest dct=new DbConnectTest();
		//dct.connectSawon();
		dct.connectFood();
	}

}
