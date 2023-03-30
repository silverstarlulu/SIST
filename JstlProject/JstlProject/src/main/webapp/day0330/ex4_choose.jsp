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
	<fmt:requestEncoding value="utf-8" />
	<form action="ex4_choose.jsp" method="post" style="width: 500px">
		<h3>이름을 입력해주세요</h3>
		<input type="text" name="irum" class="form-control">

		<h3>여행가고싶은 나라를 입력해주세요</h3>
		<input type="text" name="nara" class="form-control">

		<button type="submit" class="btn btn-info">결과확인</button>
	</form>

	<c:if test="${!empty param.irum }">
		<h3>이름: ${param.irum }</h3>
		<h3>가고싶은 나라: ${param.nara }</h3>

		<c:choose>
			<c:when test="${param.nara=='캐나다' }">
				<h3 style="color: green; font-size: 2em;">캐나다 항공권은 200!</h3>
			</c:when>
			<c:when test="${param.nara=='하와이' }">
				<h3 style="color: green; font-size: 2em;">하와이 항공권은 180!</h3>
			</c:when>
			<c:when test="${param.nara=='괌' }">
				<h3 style="color: green; font-size: 2em;">괌 항공권은 80!</h3>
			</c:when>
			<c:when test="${param.nara=='뉴욕' }">
				<h3 style="color: green; font-size: 2em;">뉴욕 항공권은 250!</h3>
			</c:when>
			<c:otherwise>
				<h1 style="color: red; font-size: 6em; font-family: '궁서'">
					다시 입력해.
					</h3>
			</c:otherwise>
		</c:choose>
	</c:if>
	<br>



</body>
</html>