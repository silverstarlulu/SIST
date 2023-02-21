<%@page import="login.model.loginDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%
	//세션으로부터 id를 읽어와서 name 얻기
	String id = (String) session.getAttribute("idok");

	loginDao dao = new loginDao();
	String name = dao.getName(id);
	%>

	<br>
	<br>
	<b style="color: blue; margin-left: 100px"><%=name%></b>님이 로그인 하셨습니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" value="로그아웃" class="btn btn-warning btn-sm" onclick="location.href='logoutproc.jsp'">
	<br>
	<br>
	<img alt="" src="../쇼핑몰사진/1.jpg" style="width: 100px; margin-left: 100px">
</body>
</html>