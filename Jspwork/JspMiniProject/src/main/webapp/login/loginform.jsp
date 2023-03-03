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
String saveok = (String) session.getAttribute("saveok");
String myid = "";
if (saveok != null) {
	myid = (String) session.getAttribute("myid");
}
%>
<body>
	<div style="margin-left: 130px">
		<form action="login/loginaction.jsp" method="post">
			<table class="table table-bordered" style="width: 600px; height: 250px">
				<caption>
					<b>세션로그인</b>
				</caption>
				<tr>
					<td colspan="2" align="right">
						<input type="checkbox" name="cbsave" <%=saveok == null ? "" : "checked"%>>
						아이디저장
					</td>
				</tr>
				<tr>
					<th width="150" bgcolor="#DCE6E7" style="text-align: center; vertical-align: middle">아이디</th>
					<td>
						<input type="text" name="id" class="form-control" required="required" style="width: 400px" value="<%=myid%>">
					</td>
				</tr>
				<tr>
					<th width="150" bgcolor="#DCE6E7" style="text-align: center; vertical-align: middle">비밀번호</th>
					<td>
						<input type="password" name="pass" class="form-control" required="required" style="width: 400px">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success" style="width: 400px">로그인</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>