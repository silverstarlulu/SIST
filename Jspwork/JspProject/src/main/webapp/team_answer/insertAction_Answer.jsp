<%@page import="team_answer.model.teamAnswerDao"%>
<%@page import="team_answer.model.teamAnswerDto"%>
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
	String name = request.getParameter("iname");
	String driver = request.getParameter("driver");
	System.out.println(driver);
	String hp = request.getParameter("hp");

	teamAnswerDto dto = new teamAnswerDto();
	dto.setMyname(name);
	dto.setDriver(driver == null ? "없음" : "있음");
	dto.setHp(hp);

	teamAnswerDao dao = new teamAnswerDao();
	dao.insertTeam(dto);

	response.sendRedirect("teamList_Answer.jsp");
	%>
</body>
</html>