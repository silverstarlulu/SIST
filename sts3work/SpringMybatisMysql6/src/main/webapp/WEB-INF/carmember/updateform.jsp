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

<input type="hidden" name="num" value="${dto.num }">

		<table class="table table-bordered" style="width: 350px">
			<caption>
				<b>개인 정보 수정</b>
			</caption>
			<tr>
				<th bgcolor="pink" width="100">이름</th>
				<td><input type="text" name="name" size="10"
					 value="${dto.name }"></td>
			</tr>

			<tr>
				<th bgcolor="pink" width="100">전화번호</th>
				<td><input type="text" name="hp" size="10"
					value="${dto.hp }"></td>
			</tr>

			<tr>
				<th bgcolor="pink" width="100">주소</th>
				<td><input type="text" name="addr" size="10" value="${dto.addr }"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-default">DB수정</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='list'">취소</button></td>
			</tr>

		</table>
	</form>
</body>
</html>