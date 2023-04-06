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
	<form action="insert" method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>노예계약서</b> (가족같은 회사입니다^^~@)
			</caption>
			<tr>
				<th bgcolor="tomato" style="color: white">사원명</th>
				<td><input type="text" name="name" class="form-control"
					style="width: 250px" required="required"></td>
			</tr>

			<tr>
				<th bgcolor="tomato" style="color: white">부서명</th>
				<td><input type="text" name="buseo" class="form-control"
					style="width: 250px" required="required"></td>
			</tr>

			<tr>
				<th bgcolor="tomato" style="color: white">운전면허여부</th>
				<td><input type="radio" name="driver" value="있음">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="driver" value="없음">&nbsp;&nbsp;X</td>
			</tr>

			<tr>
				<th bgcolor="tomato" style="color: white">사진</th>
				<td><input type="file" name="upload" class="form-control"
					style="width: 250px"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-danger btn-xl">계.약.완.료.</button>&nbsp;&nbsp;<button type="button"
						class="btn btn-default btn-xs" onclick="location.href='list'">입사취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>