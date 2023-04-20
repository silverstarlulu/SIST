<%@page import="boot.data.dto.MemberDto"%>
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
	<div>
		<div align="center">
			<c:if test="${sessionScope.loginOk==null }">
				<img src="../image/포차코2.png" width="100" height="100"
					style="margin-top: 10px; border: 1px solid gray; border-radius: 100%"
					id="infoImg">
			</c:if>
			<c:if test="${sessionScope.loginOk!=null }">
				<img src="../photo/${sessionScope.loginPhoto}" width="100"
					height="100"
					style="margin-top: 10px; border: 1px solid gray; border-radius: 100%"
					id="infoImg">
			</c:if>
		</div>
		<br> <span class="glyphicon glyphicon-music"
			style="margin: 3px 10px; font-size: 1.3em"></span>&nbsp;lululala@sist.com
		<br> <span class="glyphicon glyphicon-cloud"
			style="margin: 3px 10px; font-size: 1.3em"></span>&nbsp;쌍용교육센터 <br>
		<a><img src="../image/점프.png" style="width: 40px">&nbsp;박예은</a>
	</div>
</body>
</html>