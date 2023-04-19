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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
	font-size: 1.7em;
}
</style>
</head>
<body>

	<h1 class="alert alert-info">멤버리스트 : 총 ${count } 명</h1>
	<table class="table table-bordered">
		<caption>
			<b>전체 회원명단</b>
		</caption>
		<tr style="background-color: #A6D0DD">
			<th style="width: 30px; text-align: center;"></th>
			<th style="width: 100px; text-align: center;">이름</th>
			<th style="width: 50px; text-align: center;">아이디</th>
			<th style="width: 100px; text-align: center;">핸드폰</th>
			<th style="width: 80px; text-align: center;">주소</th>
			<th style="width: 80px; text-align: center;">이메일</th>
			<th style="width: 80px; text-align: center;"><input
				type="checkbox">&nbsp;&nbsp;삭제</th>
		</tr>
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr align="center">
				<td>${i.count }</td>
				<td><img src="../photo/${dto.photo }" width="40">${dto.name }</td>
				<td>${dto.id }</td>
				<td>${dto.hp }</td>
				<td>${dto.addr }</td>
				<td>${dto.email }</td>
				<td><input type="checkbox" class="del" num=${dto.num }></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7" align="right"><button type="button" class="btn btn-danger"
					style="width: 50px;" id="btnDel">삭제</button></td>
		</tr>
	</table>
</body>
</html>