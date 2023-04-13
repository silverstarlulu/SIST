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
	<div align="center" style="margin: 10px">
		<button type="button" class="btn btn-info"
			onclick="location.href='carform'">차량정보 추가</button>
		<h1 class="alert"
			style="width: 700px; background-color: #E4DCCF; color: #0B2447;">
			차량대수: 총 <b>${totalCount }</b> 대
		</h1>
		<c:forEach var="list" items="${list }">
			<h3
				style="background-color: ${list.carcolor }; padding:20px; color:white; width:500px; border-radius:10px; text-align:center;">
				차종명: ${list.carname }<br> 가격:
				<fmt:formatNumber type="currency">${list.carprice }</fmt:formatNumber>
				<br> 구입일: ${list.carguip } <br> 등록일:
				<fmt:formatDate value="${list.guipday }" pattern="yyyy-MM-dd" />
				<br>
				<br>
				<button type="button" class="btn btn-success btn-sm"
					onclick="location.href='carupdateform?num=${list.num}'"
					style="margin-right: 10px">수정</button>
				<button type="button" class="btn btn-success btn-sm"
					onclick="location.href='delete?num=${list.num}'">삭제</button>
			</h3>
		</c:forEach>
	</div>
</html>