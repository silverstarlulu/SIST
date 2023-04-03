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
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<h2>${title }</h2>
	<img src="${myimg1 }" width="100">


	<table style="width: 500px">
		<tr>
			<th>이름</th>
			<th>핸드폰</th>
		</tr>
		<tr>
			<td>박예은</td>
			<td>010-2222-2222</td>
		</tr>
	</table>
</body>
</html>