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
<body>
	<%
	//배열선언
	String[] colors = { "green", "red", "yellow", "gray", "magenta" };

	//제목선언
	String title = "배열 출력";
	%>

	<table class="table table-bordered" style="width: 200px">
		<caption>
			<b><%=title%></b>
		</caption>
		<tr bgcolor="gray">
			<th>번호</th>
			<th>색상</th>
		</tr>
		<%
		for (int i = 0; i < colors.length; i++) {
		%>
		<tr>
			<td><%=i + 1%></td>
			<td>
				<b style="color: <%=colors[i]%>"><%=colors[i]%></b>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>