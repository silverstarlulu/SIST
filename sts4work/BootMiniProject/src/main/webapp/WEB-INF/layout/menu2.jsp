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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-size: 2em;
	font-family: 'Gaegu', cursive;
}

ul.menu {
	list-style: none;
}

ul.menu li {
	width : 100px;
	float: left;
	height: 40px;
	line-height: 40px;
	margin-left: 10px;
	margin-top: 20px;
	text-align: center;
	font-size: 18px;
	background-color: #867070;
	color: #F9F5EB;
	cursor: pointer;
	width: 100px;
	border-radius: 2px;
}

ul.menu li:active {
	background-color: #F9F5EB;
}

ul.menu li a:active {
	color: #867070;
}

ul.menu li a {
	color: #F9F5EB;
	text-decoration: none;
}
</style>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<ul class="menu">
		<li><a href="${root }/">HOME</a></li>
		<li><a href="${root }/ipgo/form">상품등록</a></li>
		<li><a href="${root }/ipgo/list">상품목록</a></li>
		<li><a href="${root }/board/list">게시판</a></li>
		<li><a href="${root }/login/main">로그인</a></li>
		<li><a href="${root }/member/list">회원목록</a></li>
		<li><a href="${root }/member/form">회원가입</a></li>
		<li><a href="${root }/road/map">오시는길</a></li>
	</ul>
</body>
</html>