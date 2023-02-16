<%@page import="info.model.InfoDao"%>
<%@page import="info.model.InfoDto"%>
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
	String addr = request.getParameter("addr");

	//입력데이터를 DTO로 묶기
	InfoDto dto = new InfoDto();
	dto.setName(name);
	dto.setAddr(addr);

	//insert메서드로 전달
	InfoDao dao = new InfoDao();
	dao.insertInfo(dto);
	
	//infoList(출력) 로 이동
	response.sendRedirect("infoList.jsp");		/* url 주소창 변경  */
	%>
</body>
</html>