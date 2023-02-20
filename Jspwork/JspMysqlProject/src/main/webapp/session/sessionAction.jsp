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
	String msg = (String) session.getAttribute("msg");
	String trip = request.getParameter("trip");

	if (msg == null || !msg.equals("lululala")) {
	%>
	<h3 style="color: magenta">시간초과융~</h3>
	<%
	} else {
	%>
	<h3>
		세상에. 상품에 당첨되셨어요..! (당첨 여행상품 : <b><%=trip%></b>여행)
	</h3>
	<%
	}
	%>
</body>
</html>