<%@page import="memo.model.MemoDto"%>
<%@page import="memo.model.MemoDao"%>
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
	//엔코딩
	request.setCharacterEncoding("utf-8");

	//데이터 읽기
	String unum = request.getParameter("unum");
	String uwriter=request.getParameter("uwriter");
	String ucontent=request.getParameter("ucontent");
	String uavata=request.getParameter("uavata");

	MemoDao dao = new MemoDao();
	MemoDto dto= dao.getData(unum);
	
	dto.setNum(unum);
	dto.setWriter(uwriter);
	dto.setContent(ucontent);
	dto.setAvata(uavata);
	
	dao.updateMemo(dto);
	%>
</body>
</html>