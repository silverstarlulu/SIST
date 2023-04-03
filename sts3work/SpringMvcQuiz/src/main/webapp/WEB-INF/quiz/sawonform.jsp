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
	<h2>사원폼</h2>
	<form action="result" method="post">
		사원명: <input type="text" size="10" name="name"><br> 부서명: <input
			type="text" size="10" name="buseo"><br> 급여: <input
			type="text" size="10" name="pay"><br> 나이: <input
			type="text" size="10" name="age"><br> 혈액형: <input
			type="text" size="10" name="bloodType"><br>

		<button type="submit">출력</button>
	</form>

</body>
</html>