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
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

table {
	font-size: 1.2em;
}
</style>
<body>

	<table class="table table-bordered" style="width: 800px">
		<tr>
			<td colspan="2"><h3 style="font-size: 1.7em">
					<b>${dto.sangname }</b>
				</h3></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber value="${dto.price }" type="currency" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<div
					style="width: 20px; height: 20px; border-radius: 100%; background-color: ${dto.color }"></div>
			</td>
		</tr>
		<tr>
		<td>${dto.content }</td>
		</tr>
		<tr>
			<th>입고일</th><td>${dto.ipgoday }</td>
		</tr>


		<tr>
			<td style="width: 100%" colspan="2">
				<button type="button" class="btn btn-info btn-sm"
					onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage}'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
					onclick="location.href='delte?num${dto.num}&currentPage=${currentPage }'">삭제</button>
				<c:if test="${sessionScope.loginOk!=null }">
					<button type="button" class="btn btn-info btn-sm"
						onclick="location.href='form'">상품입고</button>
				</c:if>

				<button type="button" class="btn btn-success btn-sm"
					onclick="location.href='list?currentPage=${currentPage}'">목록으로</button>
			</td>
		</tr>
	</table>

</body>
</html>