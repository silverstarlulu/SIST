<%@page import="java.text.SimpleDateFormat"%>
<%@page import="team_answer.model.teamAnswerDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="team_answer.model.teamAnswerDao"%>
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
<%
teamAnswerDao dao = new teamAnswerDao();
ArrayList<teamAnswerDto> list = dao.getAllTeamDatas();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<button type="button" class="btn btn-info" onclick="location.href='insertForm_Answer.jsp'">팀원추가</button>
	<br>

	<table class="table table-bordered" style="width: 800px">
		<caption>
			<b>팀원정보목록</b>
		</caption>
		<tr bgcolor="olive">
			<th width="60">번호</th>
			<th width="60">이름</th>
			<th width="60">운전면허</th>
			<th width="60">핸드폰</th>
			<th width="60">작성일</th>
			<th width="60">편집</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
			teamAnswerDto dto = list.get(i);
		%>
		<tr>
			<td><%=i + 1%></td>
			<td><%=dto.getMyname()%></td>
			<td><%=dto.getDriver()%></td>
			<td><%=dto.getHp()%></td>
			<td><%=sdf.format(dto.getWriteday())%></td>
			<td>
				<button type="button" class="btn btn-info btn-sm" onclick="location.href='updateForm_Answer.jsp?num=<%=dto.getNum()%>'">update</button>
				<button type="button" class="btn btn-danger btn-sm" onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">delete</button>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>