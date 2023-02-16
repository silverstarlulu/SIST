<%@page import="team.model.TeamDao"%>
<%@page import="team.model.TeamDto"%>
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
	String hp = request.getParameter("hp");
	String lic = "";
	if (request.getParameter("lic") == null) {
		lic = "없음";
	} else
		lic = "있음";

	TeamDto dto = new TeamDto();
	dto.setName(name);
	dto.setHp(hp);
	dto.setDriver(lic);

	TeamDao dao = new TeamDao();
	dao.insertTeam(dto);
	
	response.sendRedirect("teamList.jsp");
	%>
</body>
</html>