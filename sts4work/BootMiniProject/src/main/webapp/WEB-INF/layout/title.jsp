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
<style type="text/css">
b {
	color: #2A2F4F;
}

b:hover {
	text-decoration: none;
}

</style>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<a href="${root }"> <img src="${root }/image/산리오즈.png" width="30%"
		height="100%"> <b style="font-size: 1.8em">스프링부트 MyBatis +
			Tiles</b>
	</a>
</body>
</html>