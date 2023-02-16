<%@page import="info.model.InfoDto"%>
<%@page import="java.util.Vector"%>
<%@page import="info.model.InfoDao"%>
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
}

th {
	text-align: center;
	font-size: 12pt;
}

button {
	margin: 0px 3px
}
</style>
</head>
<%
InfoDao dao = new InfoDao();
Vector<InfoDto> list = dao.getInfoAllDatas();
%>
<body>
	<b style="font-size: 10pt"> <a href="insertForm.jsp">
			<button type="button" class="btn btn-info">데이터 추가</button>
	</a>
	</b>

	<hr>

	<table class="table table-bordered" style="width: 550px">

		<caption>
			<b>Info 리스트 목록</b>
		</caption>

		<tr bgcolor="wheat">
			<th width="40">번호</th>
			<th width="60">이름</th>
			<th width="120">주소</th>
			<th width="160">날짜</th>
			<th width="80">편집</th>
		</tr>

		<%
		for (int i = 0; i < list.size(); i++) {
			InfoDto dto = list.get(i);
		%>
		<tr>
			<td align="center"><%=i + 1%></td>
			<td align="center"><%=dto.getName()%></td>
			<td align="center"><%=dto.getAddr()%></td>
			<td align="center"><%=dto.getSdate()%></td>
			<td align="center">
				<button type="button" class="btn btn-success btn-xs" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
				<button type="button" class="btn btn-warning btn-xs" onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">삭제</button>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>