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
	<form action="process2" method="post">
		<table style="width: 400px" class="table table-hover">
			<caption>상품 입고</caption>
			<tr>
				<th width="100">상품명</th>
				<td><input type="text" name="sang" class="form-control"></td>
			</tr>
			<tr>
				<th width="100">수량</th>
				<td><input type="text" name="su" class="form-control"></td>
			</tr>
			<tr>
				<th width="100">단가</th>
				<td><input type="text" name="dan" class="form-control"></td>
			</tr>
			<tr>
				<th width="100">색상</th>
				<td><input type="color" name="color" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">상품 정보입력</button></td>
			</tr>
		</table>
	</form>
</body>
</html>