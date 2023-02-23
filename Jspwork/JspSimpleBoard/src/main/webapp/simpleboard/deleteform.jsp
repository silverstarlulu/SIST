<%@page import="model.simpleboard.SimpleDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
	function funcdel(num) {
		var yes = confirm("정말 삭제하시겠습니까?");

		if (yes) {
			location.href = "deleteaction.jsp?num=" + num;
		}
	}
</script>
</head>
<%
String num = request.getParameter("num");
%>
<body>

	<div style="margin: 100px">
		<form action="deleteaction.jsp" method="post">
			<table class="table table-bordered" style="width: 250px">
				<tr height="120" align="center">
					<td>
						<b>삭제를 위해<br>비밀번호를 입력하세요
						</b> <br> <br>
						<input type="password" class="form-control" name="inputpass" size="5" placeholder="숫자 4자리" required="required">
						<input type="hidden" name="num" value="<%=num%>">
						<br>
						<input type="submit" value="삭제" class="btn btn-danger btn-sm" onclick="funcdel('<%=num%>')">
						<input type="button" value="취소" onclick="history.back()" class="btn btn-info btn-sm">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>