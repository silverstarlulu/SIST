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
	<form action="update" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${dto.num }">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>노예계약서 수정</b> (가족같은 회사입니다^^~@)
			</caption>
			<tr>
				<th bgcolor="yellow">사원명</th>
				<td><input type="text" name="name" class="form-control"
					style="width: 250px" value="${dto.name }" readonly="readonly"></td>
			</tr>

			<tr>
				<th bgcolor="yellow">부서명</th>
				<td><input type="text" name="buseo" class="form-control"
					style="width: 250px" value="${dto.buseo }"></td>
			</tr>

			<tr>
				<th bgcolor="yellow">운전면허여부</th>
				<td><input type="radio" name="driver" value="있음" ${dto.driver=="있음"?"checked":"" } >&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="driver" value="없음" ${dto.driver=="없음"?"checked":"" }>&nbsp;&nbsp;X</td>
			</tr>

			<tr>
				<th bgcolor="yellow">사진</th>
				<td><input type="file" name="upload" class="form-control"
					style="width: 250px"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-info">수정완료</button>&nbsp;&nbsp;<button type="button"
						class="btn btn-info" onclick="location.href='list'">수정취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>