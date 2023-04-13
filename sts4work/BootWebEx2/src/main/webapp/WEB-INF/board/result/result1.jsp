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
	<c:set var="total" value="${java+spring }" />
	<c:set var="avg" value="${total/2 }" />
	<h3 class="alert alert-success">이름은 ${name }인 내가 자바점수는 ${java }점에
		스프링점수는 ${spring }점?@!</h3>
	<h3 class="alert alert-info">
		총점은 ${total }점에 평균은 ${avg }점이라구?@
	</h3>
</body>
</html>