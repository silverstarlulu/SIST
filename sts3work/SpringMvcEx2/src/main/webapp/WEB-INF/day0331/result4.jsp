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
	<h2>resources 폴더 안의 이미지 출력</h2>
	<img src="../res/멍멍.JPG" width="300">
	<h2>resources 폴더 안의 image1 폴더안의 이미지 출력</h2>
	<img src="../res/image1/토끼푸들.JPG" width="300">
	<h2>WEB-INF 폴더 안의 이미지 출력</h2>
	<img src="../image/고양이두마리.JPG" width="300">
	<h2>WEB-INF 폴더 안의 dog 폴더안의 이미지 출력</h2>
	<img src="../image/dog/비글.JPG" width="300">
</body>
</html>