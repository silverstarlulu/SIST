<%@page import="team.model.TeamDto"%>
<%@page import="java.util.Vector"%>
<%@page import="team.model.TeamDao"%>
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
<style>
body {
	font-family: 'Poor Story', cursive;
}

table {
	margin: 10px
}

h4 {
	font-weight: 600;
	font-size: 25px
}

th {
	text-align: center;
	font-size: 15px
}

.chuga {
	margin: 10px
}

#b {
	margin: 0px 3px
}
</style>
<%
TeamDao dao = new TeamDao();
Vector<TeamDto> list = dao.selectAllDataTeam();
%>
<body>
	<button type="button" class="btn btn-success chuga" onclick="location.href='insertForm.jsp'">추가 가입</button>
	<table class="table table-stripped" style="width: 800px">
		<tr style="background-color: powderblue;">
			<td colspan="6" align="center">
				<h4 style="color: white">가입자 목록</h4>
			</td>
		</tr>
		<tr>
			<th width="60px">번호</th>
			<th width="100px">이름</th>
			<th width="120px">전화번호</th>
			<th width="100px">운전면허여부</th>
			<th width="180px">가입일자</th>
			<th width="100px">편집</th>
		</tr>

		<%
		for (int i = 0; i < list.size(); i++) {
			TeamDto dto = list.get(i);
		%>
		<tr>
			<td align="center"><%=i + 1%></td>
			<td align="center"><%=dto.getName()%></td>
			<td align="center"><%=dto.getHp()%></td>
			<td align="center"><%=dto.getDriver()%></td>
			<td align="center"><%=dto.getWriteday()%></td>
			<td>
				<button type="button" id="b" class="btn btn-sm btn-warning" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
				<button type="button" id="b" class="btn btn-sm btn-danger" onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">탈퇴</button>
			</td>
			<%
			}
			%>
		</tr>
	</table>
</body>
</html>