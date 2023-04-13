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
	<table class="table table-bordered" style="width: 600px">
		<tr>
			<td rowspan="3" width="200"><img src="/photo/${dto.photo }"></td>
			<th width="100">상품명</th>
			<td>${dto.sangpum }</td>
		</tr>
		<tr>
			<th width="100">가격</th>
			<td><fmt:formatNumber type="currency">${dto.price }</fmt:formatNumber></td>
		</tr>

		<tr>
			<th width="100">입고일</th>
			<td>${dto.ipgoday }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<button type="button"
					onclick="location.href='updateForm?num=${dto.num}'">수정</button>
					<button type="button"
					onclick="location.href='delete?num=${dto.num}'">삭제</button>
			<button type="button"
					onclick="location.href='list'">목록으로</button></td>
		</tr>
	</table>


</body>
</html>