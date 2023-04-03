<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<form action="process1" method="post">
		작성자:<input type="text" name="name"><br> 날짜:<input
			type="text" name="date"><br> 성별:<input type="radio"
			name="gender" value="남자" checked="checked">남자&nbsp;&nbsp;<input
			type="radio" name="gender" value="여자">여자<br>

		<button type="submit">서버에 전송</button>
	</form>
</body>
</html>