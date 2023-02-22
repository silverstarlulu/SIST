<%@page import="model.simpleboard.SimpleDao"%>
<%@page import="model.simpleboard.SimpleDto"%>
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
	String num = request.getParameter("num");
	String inputpass = request.getParameter("inputpass");

	SimpleDao dao = new SimpleDao();
	SimpleDto dto = dao.getData(num);

	if (dto.getPass().equals(inputpass)) {
		dao.deleteBoard(dto);
		response.sendRedirect("boardlist2.jsp");
	} else {
	%>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>