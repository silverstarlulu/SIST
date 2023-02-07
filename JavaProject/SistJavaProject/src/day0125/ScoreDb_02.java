package day0125;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import day0119.DbConnect;

public class ScoreDb_02 {

	DbConnect db=new DbConnect();
	Scanner sc=new Scanner(System.in);

	//insert
	public void insertScore() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.print("학생명 입력 >> ");
		String name=sc.nextLine();
		System.out.print("해당학생의 자바 점수 입력 >> ");
		int java=Integer.parseInt(sc.nextLine());
		System.out.print("해당학생의 오라클 점수 입력 >> ");
		int oracle=Integer.parseInt(sc.nextLine());
		
		String sql="insert into score(num,name,java,oracle) values(seq_score.nextval,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setInt(2, java);
			pstmt.setInt(3, oracle);
			
			pstmt.execute();
			
			System.out.println("\t\t**insert 성공**\n");
			
		} catch (SQLException e) {
			System.out.println("insert error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	//총점과 평균 다시 계산
	public void calTotAvg() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update score set total=java+oracle,average=(java+oracle)/2.0";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.execute();
			
		} catch (SQLException e) {
			System.out.println("calTotAvg error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	//select
	public void selectAllScore() {
		//총점,평균 계산 후 출력시작
		this.calTotAvg();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from score order by num";
		
		System.out.println("\n[학생 성적 출력]");
		System.out.println("번호\t학생명\t자바점수\t오라클점수\t총점\t평균");
		System.out.println("----------------------------------------------------");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				System.out.println(rs.getInt("num")+"\t"+rs.getString("name")+"\t"+
									rs.getInt("java")+"점\t"+rs.getInt("oracle")+"점\t"+
									rs.getInt("total")+"점\t"+rs.getDouble("average")+"점");
			}
			
			System.out.println("----------------------------------------------------");
			System.out.println("\t\t**학생정보 출력완료**\n");
		} catch (SQLException e) {
			System.out.println("select error: "+e.getMessage());
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
	}
	
	//delete
	public void deleteScore() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from score where num=?";
		
		System.out.print("삭제할 학생의 번호 입력 >> ");
		int num=Integer.parseInt(sc.nextLine());
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			int n=pstmt.executeUpdate();
			if(n==0) System.out.println("ㅠㅠ해당 번호는 존재하지 않습니다ㅠㅠ\n");
			else 	 System.out.println("\t\t**"+num+"번 학생정보 삭제완료**\n");
		} catch (SQLException e) {
			System.out.println("delete error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//update
	public void updateScore() {
		System.out.print("수정할 학생 번호 입력 >> ");
		int num=Integer.parseInt(sc.nextLine());
		System.out.print("수정할 자바점수 입력 >> ");
		int java=Integer.parseInt(sc.nextLine());
		System.out.print("수정할 오라클점수 입력 >> ");
		int oracle=Integer.parseInt(sc.nextLine());
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update score set java=?,oracle=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, java);
			pstmt.setInt(2, oracle);
			pstmt.setInt(3, num);
			
			int n=pstmt.executeUpdate();
			if(n==0) System.out.println("ㅠㅠ해당 번호는 존재하지 않습니다ㅠㅠ\n");
			else 	 System.out.println("\t\t**"+num+"번 학생정보 수정완료**\n");
			
		} catch (SQLException e) {
			System.out.println("update error: "+e.getMessage());
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void process() {
		while(true) {
			System.out.println("[메뉴]");
			System.out.println("1.학생성적추가\t2.학생정보삭제\t3.학생성적수정\t4.학생전체출력\t9.종료");
			System.out.println("=======================================================================");
			System.out.print("메뉴 선택 >> ");
			int num=Integer.parseInt(sc.nextLine());
			if (num==1) 			insertScore();
			else if (num==2)		deleteScore();
			else if (num==3)		updateScore();
			else if (num==4)		selectAllScore();
			else if (num==9) {
					System.out.println("~프로그램 종료합니다~");
					break;
			}
			else	System.out.println("재입력 바랍니다!\n");
		}
	}
	
	
	public static void main(String[] args) {
		ScoreDb_02 score=new ScoreDb_02();
		score.process();

	}

}
