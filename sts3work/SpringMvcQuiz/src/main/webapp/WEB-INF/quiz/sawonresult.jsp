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
	<h2>사원명: ${dto.name }</h2>
	<h2>부서명: ${dto.buseo }</h2>
	<h2>급여: ${dto.pay } 원</h2>
	<h2>나이: ${dto.age } 세</h2>
	<h2>혈액형: ${dto.bloodType } 형</h2>

</body>
</html>