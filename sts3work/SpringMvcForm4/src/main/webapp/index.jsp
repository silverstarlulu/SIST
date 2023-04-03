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
	<a href="board/form1">폼1</a> <br>
	<%-- <c:redirect url="board/form1"></c:redirect> --%>
	<a href="board/result2">board/result2</a> <br>
	<a href="shop/list">shop/list</a> <br>
	<a href="shop/form2">폼데이터 읽기_ dto</a> <br>
	<a href="shop/form3">폼데이터 읽기_ map</a> <br>
</body>
</html>