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
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<img src="${root }/image/배너1.JPG" width="100%">
	<br>
	<br>
	<img src="${root }/image/배너2.JPG" width="100%">
	<br>
	<br>
	<img src="${root }/image/배너3.JPG" width="100%">
	<br>
	<br>
	<li><b>메인페이지</b></li>
</body>
</html>