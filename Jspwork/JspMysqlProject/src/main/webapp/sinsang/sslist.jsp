<%@page import="sinsang.model.SinsangDto"%>
<%@page import="java.util.Vector"%>
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
body {
	font-family: 'Poor Story', cursive;
	font-size: 18px;
}

th {
	text-align: center;
	background-color: wheat;
	font-size: 20px;
}
</style>
</head>
<%
SinsangDao dao = new SinsangDao();
Vector<SinsangDto> list = dao.selectAllSinsang();
%>
<body>
	<button type="button" class="btn btn-info" onclick="location.href='addform.jsp'">회원추가</button>
	<hr>
	<table class="table table-hover" style="width: 700px">
		<caption>
			<b>리스트 목록</b>
		</caption>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>혈액형</th>
			<th>전화번호</th>
			<th>생년월일</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
			SinsangDto dto = list.get(i);
		%>
		<tr>
			<td style="text-align: center"><%=i + 1%></td>
			<td style="text-align: center"><a href='sangsepage.jsp?num=<%=dto.getNum()%>' style="text-decoration: none; color: black"><%=dto.getName()%></a></td>
			<td style="text-align: center"><%=dto.getBlood()%>형</td>
			<td style="text-align: center"><%=dto.getHp()%></td>
			<td style="text-align: center"><%=dto.getBirth()%></td>
			<%
			}
			%>
		</tr>
	</table>
</body>
</html>