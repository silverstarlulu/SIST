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
table {
	border: 4px solid gray;
	width: 450px
}

tr, th, td {
	border: 2px solid pink;
	font-size: 10pt
}
</style>
<body>
	<%
	String[] str = { "1.jpg", "3.jpg", "5.jpg", "7.jpg", "9.jpg", "11.jpg", "13.jpg", "15.jpg", "17.jpg", "18.jpg",
			"20.jpg" };
	int n = 0;
	%>

	<table>
		<%
		for (int i = 0; i < 3; i++) {
		%>
		<tr>
			<%
			for (int j = 0; j < 3; j++) {
			%>
			<td>
				<img alt="" src="../image/<%=str[n]%>" width="150" height="150">
			</td>
			<%
			n++;
			}
			%>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>