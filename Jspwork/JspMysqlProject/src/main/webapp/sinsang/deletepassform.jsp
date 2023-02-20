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
</head>
<%
String num = request.getParameter("num");
%>
<body>
	<div style="margin: 100px">
		<form action="deletepassaction.jsp" method="post">
			<table class="table table-bordered" style="width: 250px">
				<tr height="120" align="center">
				<td>
					<b>삭제를 위해<br>비밀번호를 입력하세요</b>
					<br>
					<br>
					<input type="password" name="pass" size="5" required="required">
					<input type="hidden" name="num" value="<%=num%>">
					<input type="submit" value="확인" class="btn btn-danger btn-sm">
					<input type="button" value="목록" onclick="location.href='sslist.jsp'" class="btn btn-info btn-sm">
				</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>