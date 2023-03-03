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
//프로젝트 경로구하기
String root = request.getContextPath();
%>
<body>
	<a href="<%=root%>" style="color: black"><img width="140" height="100" src="image/고양이두마리.JPG" style="border-radius: 20px">&nbsp;&nbsp;&nbsp;JSP & jQuery MINI PROJECT</a>
	<div style="float: right; padding-right: 100px">
		<%
		String loginok = (String) session.getAttribute("loginok");
		String myid = (String) session.getAttribute("myid");
		MemberDao dao = new MemberDao();
		String name = dao.getName(myid);
		if (loginok == null) {
		%>
		<button type="button" class="btn btn-success" style="width: 100px" onclick="location.href='index.jsp?main=login/loginmain.jsp'">LOGIN</button>
		<%
		} else {
		%>
		<b><%=name%></b>님, 환영합니다.&nbsp;&nbsp;
		<button type="button" class="btn btn-danger" style="width: 100px" onclick="location.href='login/logoutaction.jsp'">LOGOUT</button>
		<%
		}
		%>
	</div>
</body>
</html>