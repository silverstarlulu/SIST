<%@page import="sinsang.model.SinsangDao"%>
<%@page import="sinsang.model.SinsangDto"%>
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
	String name = request.getParameter("name");
	String blood = request.getParameter("blood");
	String hp = request.getParameter("hp1") + "-" + request.getParameter("hp2") + "-" + request.getParameter("hp3");
	String birth = request.getParameter("birth");

	SinsangDto dto = new SinsangDto();
	dto.setName(name);
	dto.setBlood(blood);
	dto.setHp(hp);
	dto.setBirth(birth);

	SinsangDao dao = new SinsangDao();
	dao.insertSingsang(dto);

	response.sendRedirect("sslist.jsp");
	%>
</body>
</html>