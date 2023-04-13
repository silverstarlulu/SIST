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
	<form action="update" method="post">
		<input type="hidden" value="${dto.num }" name="num">
		<input type="hidden" value="${dto.guipday }" name="guipday">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>차량정보 수정</b>
			</caption>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">차종명</th>
				<td><input type="text" name="carname" class="form-control"
					value="${dto.carname }"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">가격</th>
				<td><input type="text" name="carprice" class="form-control"
					value="${dto.carprice }"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">차량색상</th>
				<td><input type="color" name="carcolor" class="form-control"
					value="${dto.carcolor }"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">구입일</th>
				<td><input type="date" name="carguip" value="${dto.carguip }"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-warning">정보수정</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='carlist'">목록</button></td>
			</tr>
		</table>
	</form>
</body>
</html>