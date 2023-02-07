package day0120;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import day0119.DbConnect;

public class InfoCrudTest {

	DbConnect db=new DbConnect();
	
	public void insertInfo() {
		Scanner sc=new Scanner(System.in);
		
		String name,addr;
		String sql="";
		
		System.out.println("이름입력");
		name=sc.nextLine();
		System.out.println("주소입력");
		addr=sc.nextLine();
		
		sql="insert into info values(seq_info.nextval,'"+name+"','"+addr+"',sysdate)";
		System.out.println(sql);
		//변수라서 이렇게 작성
		//문자이기 때문에 소따옴표 필요
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		try {
			
			//Statement stmt=conn.createStatement();	//에러
			stmt=conn.createStatement();
			
			//불러올 테이블이 없어서 rs 객체 필요 x
			//rs 없어서 바로 sql문 실행
			//stmt.execute(sql);			//반환값 boolean -> 전달함, 안함
			stmt.executeUpdate(sql);		//insert이므로 지금은 같지만 이건 반환값 int 메세지 띄울때!
			
			System.out.println("추가완료~!");
			
		} catch (SQLException e) {
			System.out.println("insert error: "+e.getMessage());
		} finally {
			db.dbClose(stmt, conn);
			
		}
	
	}
	
	public void selectInfo() {
		String sql="select * from info order by num";
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql);
			
			//select 요청--> executeQuery 메서드 이용 --> 결과는 ResultSet
			
			System.out.println("**info 출력**");
			System.out.println("번호\t이름\t주소\t날짜");
			
			//2개 이상일 경우 while문
			while(rs.next())
				System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getDate(4));
			
		} catch (SQLException e) {
			System.out.println("select error: "+e.getMessage());
		} finally {
			db.dbClose(rs, stmt, conn);
		}
		
	}
	
	public void deleteInfo() {	//항상 시퀀스번호를 조건으로 줘야함(ex> name 동일할 수도 있으므로)
		Scanner sc=new Scanner(System.in);
		String num;	//string 도 가능
		String sql="";
		
		System.out.print("삭제할 레코드의 시퀀스를 입력하세요 >> ");
		num=sc.nextLine();
		
		sql="delete from info where num="+num;
		System.out.println(sql);
		
		Connection conn=db.getConnection();
		Statement stmp=null;
		
		try {
			stmp=conn.createStatement();
			int a=stmp.executeUpdate(sql);		//sql문 실행, 반환값(int): 성공한 레코드 수
			
			if(a==0) System.out.println("없는 번호입니다.");
			System.out.println(a+"개 삭제완료");
		} catch (SQLException e) {
			System.out.println("delete error: "+e.getMessage());
		} finally {
			db.dbClose(stmp, conn);
		}
	}
	
	//select를 한 후 update를 함 (게시판 생각해보기)
	public void updateInfo() {
		//수정할 번호를 먼저 입력하고, 수정할 이름, 주소 입력
		Scanner sc=new Scanner(System.in);
		String name,addr;
		int num;
		String sql="";
		
		System.out.print("수정할 번호 입력 >> ");
		num=Integer.parseInt(sc.nextLine());
		System.out.print("수정할 이름 >> ");
		name=sc.nextLine();
		System.out.print("수정할 주소 >> ");
		addr=sc.nextLine();
		
		sql="update info set name='"+name+"',addr='"+addr+"' where num="+num;
		System.out.println(sql);
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			int a=stmt.executeUpdate(sql);
			
			if(a==0) System.out.println("없는 번호입니다.");
			else 	 System.out.println("수정 완료!");
		} catch (SQLException e) {
			System.out.println("update error: "+e.getMessage());
		} finally {
			db.dbClose(stmt, conn);
		}
	}
	
	public static void main(String[] args) {
		InfoCrudTest info=new InfoCrudTest();
		Scanner sc=new Scanner(System.in);
		
		while(true) {
			System.out.println("**오라클 Info_db 연습예제**");
			System.out.println("1.insert	2.select	3.delete	4.update	9.exit");
			int n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				info.insertInfo();
			else if(n==2)
				info.selectInfo();
			else if(n==3)
				info.deleteInfo();
			else if(n==4)
				info.updateInfo();
			else if(n==9) {
				System.out.println("!!종료할게용용!!");
				System.exit(0);
			}
			else System.out.println("재입력해주세요");
		}
		
		

	}

}
