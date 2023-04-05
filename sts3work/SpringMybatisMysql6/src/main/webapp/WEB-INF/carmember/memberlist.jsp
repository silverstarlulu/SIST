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
	<c:if test="${count==0}">
		<h2 class="alert alert-warning">멤버가 아무도 없습니다.</h2>
	</c:if>
	<c:if test="${count >0 }">
		<h2 class="alert alert-info">총 ${count }명의 멤버가 있습니다.</h2>

		<table class="table table-hover" style="width: 600px">
			<tr bgcolor="CDE990"; style="color: white">
				<th style="text-align: center">번호</th>
				<th style="text-align: center">이름</th>
				<th style="text-align: center">전화번호</th>
				<th style="text-align: center">주소</th>
				<th style="text-align: center">가입일</th>
				<th style="text-align: center">수정&nbsp;&nbsp;|&nbsp;&nbsp;삭제</th>
			</tr>
			<c:forEach var="member" items="${list }" varStatus="i">
			<tr style="text-align: center">
			<td>${i.count }</td>
			<td>${member.name }</td>
			<td>${member.hp }</td>
			<td>${member.addr }</td>
			<td><fmt:formatDate value="${member.gaipday }" pattern="yy.MM.dd HH:mm"/></td>
			<td><button type="button" class="btn btn-xs btn-warning" onclick="location.href='updateform?num=${member.num}'">수정</button>&nbsp;
			<button type="button" class="btn btn-xs btn-danger" onclick="location.href='delete?num=${member.num}'">삭제</button></td>
			</tr>
			</c:forEach>
		</table>
	</c:if>


	<button type="button" class="btn btn-success btn-sm"
		onclick="location.href='writeform'">멤버 가입</button>
</body>
</html>