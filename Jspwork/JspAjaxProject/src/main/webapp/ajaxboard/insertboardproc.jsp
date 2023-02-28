<%@page import="ajaxboard.model.AjaxBoardDto"%>
<%@page import="ajaxboard.model.AjaxBoardDao"%>
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
	AjaxBoardDao dao = new AjaxBoardDao();
	
	request.setCharacterEncoding("utf-8");

	String writer = request.getParameter("writer");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String avatar = request.getParameter("avatar");

	AjaxBoardDto dto = new AjaxBoardDto();
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setAvatar(avatar);

	dao.insertAjaxBoard(dto);
	%>
</body>
</html>