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
	String msg = request.getParameter("msg"); //name으로 요청 값 받기
	String imgname = request.getParameter("imgname");
	%>

	<h3>전달받은 메세지:<%=msg%></h3>
	<h3>전달받은 이미지<img alt="" src="<%=imgname%>"></h3>
</body>
</html>