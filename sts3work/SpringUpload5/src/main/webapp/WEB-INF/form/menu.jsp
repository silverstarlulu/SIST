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
	<div style="margin-left: 200px; margin-top: 200px;">
		<button type="button" class="btn btn-success"
			onclick="location.href='shop/form1'">각각 읽기</button>
		<button type="button" class="btn btn-info"
			onclick="location.href='shop/form2'">DTO 읽기</button>
		<button type="button" class="btn btn-warning"
			onclick="location.href='shop/form3'">MAP 읽기</button>
	</div>
	<div style="margin-left: 200px; margin-top: 200px;">
	<button type="button" class="btn btn-danger"
		onclick="location.href='board/uploadform1'">이미지 1개 업로드</button>
	<button type="button" class="btn btn-danger"
		onclick="location.href='board/uploadform2'">이미지 여러개 업로드</button>
	</div>
</body>
</html>