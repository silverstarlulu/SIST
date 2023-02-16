<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ex1_action</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String[] hobby = request.getParameterValues("hobby");
	%>

	<h1 class="alert alert-info">폼태그로부터 읽은 값</h1>
	<h4>
		이름:
		<%=name%></h4>
	<h4>
		생년월일:
		<%=birth%></h4>
	<h4>
		취미:
		<%
	for (int i = 0; i < hobby.length; i++) {
	%>
		[<%=hobby[i]%>]
		<%
	}
	%>

	</h4>
</body>
</html>