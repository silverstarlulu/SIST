<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%
	String num = request.getParameter("num");
	String currentPage = request.getParameter("currentPage");

	SmartDao dao = new SmartDao();
	dao.deleteSmart(num);

	response.sendRedirect("../index.jsp?main=board/boardlist.jsp?currentPage=" + currentPage);
	%>
</body>
</html>