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
<style>
body {
	font-family: 'Poor Story', cursive;
}
</style>
</head>
<%
String num = request.getParameter("num");
TeamDao dao = new TeamDao();
TeamDto dto = dao.getData(num);
%>
<body>
	<form action="updateAction.jsp" method="post">
		<table class="table table-stripped" style="width: 500px; margin: 20px">
			<tr style="background-color: #ffe">
				<td colspan="2" align="center">
					<h4>
						<b>수정 폼</b>
					</h4>
				</td>
			</tr>
			<tr>
				<th width="120">이름</th>
				<td>
					<input type="text" name="name" value="<%=dto.getName()%>" required="required">
				</td>
			</tr>
			<tr>
				<th width="120">핸드폰번호</th>
				<td>
					<input type="text" name="hp" value="<%=dto.getHp()%>" required="required">
				</td>
			</tr>
			<tr>
				<th width="120">운전면허여부</th>
				<td>
					<%
					String val = "";
					if (dto.getDriver().equals("있음")) {
						val = "checked";
					} else {
						val = "unchecked";
					}
					%>
					<input type="checkbox" name="lic" <%=val%>>
					있을경우 체크
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="num" value="<%=num%>">
					<button type="submit" class="btn btn-success" value="수정">수정</button>
					<button type="button" class="btn btn-info" value="취소" onclick="location.href='teamList.jsp'">취소</button>
				</td>
			</tr>

		</table>
	</form>
</body>
</html>