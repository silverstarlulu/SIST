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
<h2><b>${name }</b>님 성적출력</h2>
<h4>이름: ${name }</h4><br>
<h4>자바점수: ${java }점</h4>
<h4>오라클점수: ${oracle }점</h4>
<h4>스프링점수: ${spring }점</h4><br>
<c:set var="tot" value="${java+oracle+spring }"/>
<c:set var="avg" value="${tot/3 }"/>
<h4>총점: ${tot }점</h4>
<h4>평균: ${avg }점</h4>
</body>
</html>