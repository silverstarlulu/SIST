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
	<form action="write" method="post">
		<table class="table table-bordered" style="width: 350px">
			<caption>
				<b>차 정보 입력</b>
			</caption>
			<tr>
				<th bgcolor="powderblue" width="100">자동차명</th>
				<td><input type="text" name="carname" size="10"
					required="required"></td>
			</tr>

			<tr>
				<th bgcolor="powderblue" width="100">자동차 가격</th>
				<td><input type="text" name="carprice" size="10"
					required="required"></td>
			</tr>

			<tr>
				<th bgcolor="powderblue" width="100">자동차 색상</th>
				<td><input type="color" name="carcolor" size="10"
					value="#ffffcc" required="required"></td>
			</tr>

			<tr>
				<th bgcolor="powderblue" width="100">자동차 구입일</th>
				<td><input type="date" name="carguip" size="10"
					required="required"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-default">DB저장</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='list'">목록</button></td>
			</tr>

		</table>
	</form>
</body>
</html>