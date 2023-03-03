<%@page import="java.io.File"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="data.dao.GuestDao"%>
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

	GuestDao dao = new GuestDao();

	GuestDto dto = dao.getData(num);
	String photoname = dto.getPhotoname();
	String uploadPath = getServletContext().getRealPath("/save");
	//파일생성
	File file = new File(uploadPath + "\\" + photoname);
	//파일삭제
	if (file.exists())
		file.delete();

	dao.deleteGuest(num);

	response.sendRedirect("../index.jsp?main=guest/guestlist.jsp?currentPage=" + currentPage);
	%>
</body>
</html>