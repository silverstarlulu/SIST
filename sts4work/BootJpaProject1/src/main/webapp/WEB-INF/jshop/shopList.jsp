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
	<button type="button" onclick="location.href='addForm'"
		class="btn btn-info">상품입고</button>
	<table class="table table-bordered" style="width: 1000px">
		<tr>
			<th width="100">번호</th>
			<th width="200">상품명</th>
			<th width="300">상품사진</th>
			<th width="200">가격</th>
			<th width="200">입고일</th>
		</tr>
		<c:forEach var="shop" items="${list }" varStatus="i">
			<tr>
				<td>${i.count }</td>
				<td><a href='shopDetail?num=${shop.num }'>${shop.sangpum }</a></td>
				<td><img src="/photo/${shop.photo }" width='100'/></td>
				<td><fmt:formatNumber type="currency">${shop.price }</fmt:formatNumber></td>
				<td>${shop.ipgoday }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>