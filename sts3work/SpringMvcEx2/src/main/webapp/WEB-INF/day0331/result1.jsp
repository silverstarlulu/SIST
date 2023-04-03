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
<h1>result1.jsp입니다.</h1>
<h2>HelloController로부터 포워드</h2>
<b>이름: ${name }</b><br>
<b>이름: ${requestScope.name }</b><br>

<b>주소: ${addr }</b><br>
<b>주소: ${requestScope.addr }</b><br>
</body>
</html>