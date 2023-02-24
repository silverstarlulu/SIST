<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
DbConnect db = new DbConnect();

Connection conn = db.getConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from simpleboard order by num";

try {
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

	JSONArray arr = new JSONArray();

	while (rs.next()) {
		String num = rs.getString("num");
		String writer = rs.getString("writer");
		String subject = rs.getString("subject");
		String imgname = rs.getString("imgname");
		String readcount = rs.getString("readcount");
/* 		Timestamp writeday = rs.getTimestamp("writeday"); */

		JSONObject ob = new JSONObject();

		ob.put("num", num);
		ob.put("writer", writer);
		ob.put("num", num);
		ob.put("subject", subject);
		ob.put("imgname", imgname);
		ob.put("readcount", readcount);
/* 		ob.put("writeday", writeday); */

		arr.add(ob);

	}
%>
<%=
arr.toString()
%>
<%
} catch (SQLException e) {

}
%>