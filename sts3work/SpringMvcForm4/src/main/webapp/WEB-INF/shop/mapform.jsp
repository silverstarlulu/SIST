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
<form action="process3" method="post">
		<table style="width: 300px" class="table table-hover">
			<caption>시험 점수 입력</caption>
			<tr>
				<th width="150">학생명</th>
				<td><input type="text" name="name" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th width="150">JAVA 점수</th>
				<td><input type="text" name="java" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th width="150">ORACLE 점수</th>
				<td><input type="text" name="oracle" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th width="150">SPRING 점수</th>
				<td><input type="text" name="spring" class="form-control input-sm"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">학생 정보입력</button></td>
			</tr>
		</table>
	</form>
</body>
</html>