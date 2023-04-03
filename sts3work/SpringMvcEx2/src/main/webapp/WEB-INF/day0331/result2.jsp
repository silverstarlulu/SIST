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

	<c:set var="tot" value="${Java+Spring }"></c:set>
	<c:set var="avg" value="${tot/2.0 }"></c:set>

	<h2>자바점수 : ${Java }점</h2>
	<h2>스프링점수 : ${Spring }점</h2>
	<h2>총점 : ${tot }점</h2>
	<h2>평균 : ${avg }점점</h2>
</body>
</html>