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
<style>
body {
	font-family: 'Gaegu', cursive;
}

span b {
	font-size: 1.7em;
}
</style>
<c:set var="root" value="<%=request.getContextPath()%>" />
<body>
	<div style="margin-left: 100px; margin-top: 100px">
		<img src="${root }/photo/${sessionScope.loginPhoto}" width="200"
			alt="left" hspace="20"><br> <br> <span
			style="color: #643A6B"><b>${name }님 환영~</b></span>
		<button type="button" class="btn btn-danger"
			onclick="location.href='logoutProcess'">LOGOUT</button>
	</div>
</body>
</html>