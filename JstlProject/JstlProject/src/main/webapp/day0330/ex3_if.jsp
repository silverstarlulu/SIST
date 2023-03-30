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
	<c:set var="su1" value="7" />
	<c:set var="su2" value="44" />

	<c:if test="${su1>su2 }">
		<h2>숫자 1이 더 크네요</h2>
	</c:if>

	<c:if test="${su1<su2 }">
		<h2>숫자 2가 더 크네요</h2>
	</c:if>

	<c:set var="nara" value="프랑스" />

	<c:if test="${nara=='하와이' }">
		<h2>하와이 가자</h2>
	</c:if>

	<c:if test="${nara!='하와이' }">
		<h2>${nara }가자</h2>
	</c:if>
</body>
</html>