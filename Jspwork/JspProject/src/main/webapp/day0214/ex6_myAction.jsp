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
	String c1 = request.getParameter("city");
	String[] c2 = request.getParameterValues("city2");
	%>

	<h4>지역선택 :<%=c1%></h4>
	<h4>지역선택2 :
		<%
		if (c2 == null){
		%><font color="red">지역선택 안함</font>
		<%
		}
		else {
			for (int i = 0; i < c2.length; i++) {
			%>
				[<%=c2[i]%>]&nbsp;
			<%
			}
			%>
			<br><br><b>총 <%=c2.length %>개 지역을 선택함.</b>
		<%
		}
		%>
	</h4>
</body>
</html>