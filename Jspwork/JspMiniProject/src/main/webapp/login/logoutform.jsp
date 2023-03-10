<%@page import="data.dao.ShopDao"%>
<%@page import="data.dao.MemberDao"%>
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
<%
String myid = (String) session.getAttribute("myid");
MemberDao dao = new MemberDao();
String name = dao.getName(myid);
%>
<body>
	<div style="margin-left: 100px; margin-top: 50px">
		<img src="image2/이요르.JPG" width="200px" align="left" hspace="20">
	</div>
	<div>
		<h1>
			<b><%=name%></b>님
		</h1>
		<button type="button" class="btn btn-danger" style="width: 130px" onclick="location.href='login/logoutaction.jsp'">로그아웃</button>
	</div>

</body>
</html>