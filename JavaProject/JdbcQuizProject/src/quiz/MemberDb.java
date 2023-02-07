package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.Scanner;

public class MemberDb {

	DbConnect db=new DbConnect();
	Scanner sc=new Scanner(System.in);
	
	public void insertMember() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.print("사원명 입력 >> ");
		String name=sc.nextLine();
		System.out.print("부서 입력 >> ");
		String depart=sc.nextLine();
		System.out.print("직급 입력 >> ");
		String position=sc.nextLine();
		System.out.print("성별 입력 >> ");
		String gender=sc.nextLine();
		System.out.print("급여 입력 >> ");
		int pay=Integer.parseInt(sc.nextLine());
		System.out.print("보너스 입력 >> ");
		int bonus=Integer.parseInt(sc.nextLine());
		
		String sql="insert into member values(seq_mem.nextval,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, depart);
			pstmt.setString(3, position);
			pstmt.setString(4, gender);
			pstmt.setInt(5, pay);
			pstmt.setInt(6, bonus);
			
			pstmt.execute();
			
			System.out.println("\t\t**insert 성공**\n");
			
		} catch (SQLException e) {
			System.out.println("insert error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void selectMember() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from member order by sno";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("\n[사원정보]");
			System.out.println("사원번호\t사원명\t부서\t직위\t성별\t급여\t\t보너스");
			System.out.println("--------------------------------------------------------------------");
			
			while(rs.next()) {
				NumberFormat nf=NumberFormat.getCurrencyInstance();
				System.out.println(rs.getInt("sno")+"\t"+rs.getString("name")+"\t"+
									rs.getString("depart")+"\t"+rs.getString("position")+"\t"+
									rs.getString("gender")+"\t"+nf.format(rs.getInt("pay"))+"\t"+nf.format(rs.getInt("bonus")));
			}
			System.out.println("--------------------------------------------------------------------");
			
			System.out.println("\t\t**사원정보 출력완료**\n");
		} catch (SQLException e) {
			System.out.println("select error: "+e.getMessage());
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
	}
	
	public void deleteMember() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from member where sno=?";
		
		System.out.print("삭제하고싶은 사원번호 입력 >> ");
		int sno=Integer.parseInt(sc.nextLine());	
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			int a=pstmt.executeUpdate();
			if(a==0)	System.out.println("ㅠㅠ해당 사원번호는 없습니다ㅠㅠ\n");
			else 		System.out.println("\t\t**"+sno+"번 사원 삭제 완료**\n");
			
		} catch (SQLException e) {
			System.out.println("delete error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	public void updateMember() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update member set position=?,pay=?,bonus=? where sno=?";
		
		System.out.print("수정하고싶은 사원번호 입력 >> ");
		int sno=Integer.parseInt(sc.nextLine());
		System.out.print("해당 사원의 직위 변경 >> ");
		String position=sc.nextLine();
		System.out.print("해당 사원의 급여 변경 >> ");
		int pay=Integer.parseInt(sc.nextLine());
		System.out.print("해당 사원의 보너스 변경 >> ");
		int bonus=Integer.parseInt(sc.nextLine());
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, position);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, bonus);
			pstmt.setInt(4, sno);

			int a=pstmt.executeUpdate();
			if(a==0)	System.out.println("ㅠㅠ해당 사원번호는 없습니다ㅠㅠ\n");
			else 		System.out.println("\t\t**"+sno+"번 사원 수정 완료**\n");
			
		} catch (SQLException e) {
			System.out.println("update error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void searchMember() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		System.out.print("찾고싶은 글자 입력 >> ");
		String name=sc.nextLine();
		
		String sql="select * from member where name like ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			
			rs=pstmt.executeQuery();
			
			System.out.println("\n[사원정보]");
			System.out.println("사원번호\t사원명\t부서\t직위\t성별\t급여\t\t보너스");
			System.out.println("--------------------------------------------------------------------");
			
			while(rs.next()) {
				NumberFormat nf=NumberFormat.getCurrencyInstance();
				System.out.println(rs.getInt("sno")+"\t"+rs.getString("name")+"\t"+
									rs.getString("depart")+"\t"+rs.getString("position")+"\t"+
									rs.getString("gender")+"\t"+nf.format(rs.getInt("pay"))+"\t"+nf.format(rs.getInt("bonus")));
			}
			
			System.out.println("--------------------------------------------------------------------");
			
			System.out.println("\t\t**사원정보 출력완료**\n");
			
		} catch (SQLException e) {
			System.out.println("search error: "+e.getMessage());
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
	}
	
	public void process() {
		while(true) {
			System.out.println("[MENU]");
			System.out.println("1.사원정보입력   2.사원삭제   3.사원정보수정   4.사원검색   5.전체사원출력   9.종료");
			System.out.println("=================================================================================");
			
			System.out.print("메뉴를 선택하세요 >> ");
			int num=Integer.parseInt(sc.nextLine());
			if		(num==1) insertMember();
			else if (num==2) deleteMember();
			else if (num==3) updateMember();
			else if (num==4) searchMember();
			else if (num==5) selectMember();
			else if (num==9) {
						System.out.println("~프로그램 종료합니다~");
						break;
			}
			else 		System.out.println("!다시 입력하세요!\n");
		}
	}
	
	public static void main(String[] args) {
		MemberDb member=new MemberDb();
		member.process();

	}

}
