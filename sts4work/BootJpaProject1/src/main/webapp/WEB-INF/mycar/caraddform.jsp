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
	<form action="insert" method="post">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>차량정보 등록</b>
			</caption>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">차종명</th>
				<td><input type="text" name="carname" class="form-control"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">가격</th>
				<td><input type="text" name="carprice" class="form-control"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">차량색상</th>
				<td><input type="color" name="carcolor" class="form-control"
					value="#F3DEBA"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">구입일</th>
				<td><input type="date" name="carguip" value="2023-01-01"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-warning">차량등록</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='carlist'">목록</button></td>
			</tr>
		</table>
	</form>
</body>
</html>