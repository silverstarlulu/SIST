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
<body>
	<%
	MemberDao dao = new MemberDao();
	String id = request.getParameter("id");

	String name = dao.getName(id);
	%>

	<script type="text/javascript">
	alert("<%=name%>님, 가입성공입니둥");
	</script>

	<div>
		<img src="image2/푸.JPG" width="300"> <b><%=name%>님의 회원가입을 환영합니당~</b> <br>
		<br>
		<button type="button" class="btn btn-info" onclick="location.href='index.jsp?main=login/loginmain.jsp'">로그인</button>
		<button type="button" class="btn btn-info" onclick="location.href='index.jsp'">메인페이지</button>

	</div>
</body>
</html>