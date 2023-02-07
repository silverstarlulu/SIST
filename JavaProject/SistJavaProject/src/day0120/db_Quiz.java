package day0120;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import day0119.DbConnect;

public class db_Quiz {

	DbConnect db=new DbConnect();
	
	public void insertStudent() {
		Scanner sc= new Scanner(System.in);
		int age;
		String name,hp,dream;
		String sql="";
		
		System.out.print("이름 입력 >> ");
		name=sc.nextLine();
		System.out.print("핸드폰 번호 입력 >> ");
		hp=sc.nextLine();
		System.out.print("장래희망 입력 >> ");
		dream=sc.nextLine();
		System.out.print("나이 입력 >> ");
		age=Integer.parseInt(sc.nextLine());
		
		sql="insert into mystudent values(seq_s.nextval,'"+name+"','"+dream+"','"+hp+"',"+age+",sysdate)";
		System.out.println(sql);
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			
			stmt.executeUpdate(sql);
			
			System.out.println("**입력 완료**");
		} catch (SQLException e) {
			System.out.println("insert error: "+e.getMessage());
		} finally {
			db.dbClose(stmt, conn);
		}
		
	}
	
	public void selectStudent() {
		String sql="select * from mystudent order by num";
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			System.out.println("[학생정보]");
			System.out.println("번호\t이름\t핸드폰번호\t장래희망\t나이\t작성날짜");
			
			while(rs.next()) {
				String name=rs.getString(2);
				String hp=rs.getString(3);
				String dream=rs.getString(4);
				int age=rs.getInt(5);
				
				System.out.println(rs.getInt(1)+"\t"+name+"\t"+hp+"\t"+dream+"\t"+age+"\t"+rs.getString(6));
	
			}
		} catch (SQLException e) {
			System.out.println("select error: "+e.getMessage());
		} finally {
			 db.dbClose(rs, stmt, conn);
		}
		
	}

	public void deleteStudent() {
		Scanner sc=new Scanner(System.in);
		System.out.print("지우고 싶은 번호 입력 >>> ");
		int num=sc.nextInt();
		
		String sql="delete from mystudent where num="+num;
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			
			int a=stmt.executeUpdate(sql);
			
			if(a==0) System.out.println("없는 번호에용");
			else System.out.println("삭제 완료");
		} catch (SQLException e) {
			System.out.println("delete error: "+e.getMessage());
		} finally {
			db.dbClose(stmt, conn);
		}
}

	public void updateStudent() {
		Scanner sc=new Scanner(System.in);
		System.out.print("수정하고 싶은 번호 입력 >> ");
		int num=Integer.parseInt(sc.nextLine());
		System.out.print("수정할 이름 입력 >> ");
		String name=sc.nextLine();
		System.out.print("수정할 핸드폰번호 입력 >> ");
		String hp=sc.nextLine();
		System.out.print("수정할 장래희망 입력 >> ");
		String dream=sc.nextLine();
		System.out.print("수정할 나이 입력 >> ");
		int age=Integer.parseInt(sc.nextLine());
		
		String sql="update mystudent set name='"+name+"',hp='"+hp+"',dream='"+dream+"',age="+age+" where num="+num;
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			
			int a=stmt.executeUpdate(sql);
			if(a==0) System.out.println("없는 번호에용");
			else System.out.println("**수정완료**");
		} catch (SQLException e) {
			System.out.println("update error: "+e.getMessage());
		} finally {
			db.dbClose(stmt, conn);
		}
		
	}

	public static void main(String[] args) {
		db_Quiz quiz=new db_Quiz();
		Scanner sc=new Scanner(System.in);
		
		while(true) {
			System.out.println("1.추가 2.출력 3.삭제 4.수정 9.종료");
			int num=Integer.parseInt(sc.nextLine());
			
			if(num==1)			quiz.insertStudent();
			else if(num==2) 	quiz.selectStudent();
			else if(num==3)		quiz.deleteStudent();
			else if(num==4)		quiz.updateStudent();
			else if(num==9) {
				System.out.println("프로그램 종료");
				System.exit(0);
			}
			else System.out.println("재입력하세용!!!!!!!");
		}
		
	}

}
