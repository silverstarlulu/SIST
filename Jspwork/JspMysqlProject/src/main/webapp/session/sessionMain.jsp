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
	//세션저장
	session.setAttribute("msg", "lululala");
	session.setMaxInactiveInterval(10);
	%>
	<h2>10초 안에 눌러주세요</h2>
	<form action="sessionAction.jsp" method="post">
		<h2>가고싶은 여행지는?</h2>
		<input type="radio" name="trip" value="유럽">
		유럽&nbsp;
		<input type="radio" name="trip" value="제주도">
		제주도&nbsp;
		<input type="radio" name="trip" value="호주">
		호주&nbsp;
		<input type="radio" name="trip" value="부산">
		부산&nbsp;
		<input type="radio" name="trip" value="태국" checked="checked">
		태국&nbsp;
		<input type="submit" value="신청">
	</form>
</body>
</html>