<%@page import="sinsang.model.SinsangDto"%>
<%@page import="sinsang.model.SinsangDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
table{
margin: 10px
}
th{
background-color: wheat;
}
</style>
</head>
<%
String num = request.getParameter("num");

SinsangDao dao = new SinsangDao();
SinsangDto dto = dao.getData(num);
%>
<body>
	<table class="table table-bordered" style="width: 300px">
	<caption><h4><b><%=dto.getName() %></b>님의 상세페이지</h4></caption>
		<tr>
			<th>이름</th>
			<td><%=dto.getName() %></td>
		</tr>
		<tr>
			<th>혈액형</th>
			<td><%=dto.getBlood() %>형</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><%=dto.getHp() %></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><%=dto.getBirth() %></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
		<button type="button" class="btn btn-info btn-sm" onclick="history.back()">돌아가기</button>
		<button type="button" class="btn btn-warning btn-sm" onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">수정</button>
		<button type="button" class="btn btn-danger btn-sm" onclick="location.href='deletepassform.jsp?num=<%=dto.getNum()%>'">삭제</button>
		</td>
		</tr>
	</table>
</body>
</html>