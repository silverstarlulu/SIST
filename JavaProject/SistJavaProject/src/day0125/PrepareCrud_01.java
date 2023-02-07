package day0125;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.Scanner;

import day0119.DbConnect;

public class PrepareCrud_01 {

	DbConnect db=new DbConnect();
	Scanner sc=new Scanner(System.in);
	
	//insert
	public void insertSangpum() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.print("\n입고된 상품명은? >> ");
		String sang=sc.nextLine();
		System.out.print("해당 상품의 수량은? >> ");
		int su=Integer.parseInt(sc.nextLine());
		System.out.print("해당 상품의 단가는? >> ");
		int dan=Integer.parseInt(sc.nextLine());
		
		//PreparedStatement 객체는 미완의 sql문을 작성할 수 있게 해줌
		//변수 : ? 로 표시 후 다음줄에서 바인딩
		String sql="insert into sales values(seq1.nextval,?,?,?,sysdate)";
		
		try {
			//일반적인 stmt(stmt=conn.createStatement();) 와는 다르게 여기서 sql 넘겨줌
			pstmt=conn.prepareStatement(sql); 	
			
			//?값 바인딩
			pstmt.setString(1,sang);
			pstmt.setInt(2,su);
			pstmt.setInt(3,dan);
			
			//업데이트
			int a=pstmt.executeUpdate();
			if(a==0) 	System.out.println("ㅠㅠinsert 실패ㅠㅠ\n");
			else		System.out.println("**insert 성공**\n");
			
		} catch (SQLException e) {
			System.out.println("insert error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	//select
	public void selectSangpums() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sales order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("\n[전체상품출력]");
			System.out.println("시퀀스\t상품명\t수량\t단가\t입고일\t합계");
			System.out.println("-------------------------------------------------------");
			
			while(rs.next()) {
				//int total=rs.getInt("su")*rs.getInt("dan");
				//NumberFormat nf=NumberFormat.getCurrencyInstance();
				
				System.out.println(rs.getInt("num")+"\t"+rs.getString("sangpum")+"\t"+
									rs.getInt("su")+"\t"+rs.getInt("dan")+"\t"+
									rs.getDate("ipgoday"));
			}
			
			System.out.println("**상품출력완료**\n");
			
		} catch (SQLException e) {
			System.out.println("select error: "+e.getMessage());
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
	}
	
	public void deleteSangpum() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.print("\n삭제할 번호는? >> ");
		int num=Integer.parseInt(sc.nextLine());
		
		String sql="delete from sales where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			int a=pstmt.executeUpdate();
			if(a==0)	System.out.println("ㅠㅠ없는 번호입니다!ㅠㅠ\n");
			else		System.out.println("**delete 완료**\n");
			
		} catch (SQLException e) {
			System.out.println("delete error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//num을 인자로 받아서 데이터가 있으면 true, 없으면 false값 반환하는 메서드
	public boolean getData(String num) {
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sales where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			
			rs=pstmt.executeQuery();
			
			//1개일 경우는 if문 사용
			if(rs.next())	b=true;		//데이터 있을 경우
			else			b=false;	//데이터 없을 경우
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	//update
	public void updateSangpum() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.print("수정할 번호를 입력하세요 >> ");
		String num=sc.nextLine();
		
		if(!this.getData(num)) {
			System.out.println("ㅠㅠ해당번호가 존재하지 않습니다!!ㅠㅠ\n");
			return;		//메서드 종료
		}
		else {
			System.out.print("상품이름 수정 >> ");
			String sangpum=sc.nextLine();
			System.out.print("상품수량 수정 >> ");
			int su=Integer.parseInt(sc.nextLine());
			System.out.print("상품단가 수정 >> ");
			int dan=Integer.parseInt(sc.nextLine());
			
			String sql="update sales set sangpum=?,su=?,dan=? where num=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1, sangpum);
				pstmt.setInt(2, su);
				pstmt.setInt(3, dan);
				pstmt.setString(4, num);
				
				pstmt.execute();
				
				System.out.println("**update 완료**\n");
			} catch (SQLException e) {
				System.out.println("update error: "+e.getMessage());
			} finally {
				db.dbClose(pstmt, conn);
			}
			
			
		}
		
	}
	
	public static void main(String[] args) {
		PrepareCrud_01 sales=new PrepareCrud_01();
		
		Scanner sc=new Scanner(System.in);
		int n;
		
		//여러개 조회 시 while문 사용
		while(true) {
			System.out.println("[메뉴]");
			System.out.println("1.상품추가 2.상품삭제 3.상품수정 4.전체출력 9.종료");
			System.out.println("================================================");
			System.out.print("선택할 번호를 입력하세요 >> ");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)			sales.insertSangpum();
			else if(n==2)		sales.deleteSangpum();
			else if(n==3)		sales.updateSangpum();
			else if(n==4)		sales.selectSangpums();
			else if(n==9) {
					System.out.println("~프로그램 종료합니다~");
					break;
			}
			else	System.out.println("!재입력하세요!\n");
		}
		

	}

}
