<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<style type="text/css">
body {
	font-size: 1.3em;
	font-family: 'Gaegu', cursive;
}

div.layout div {
	border: 0px solid gray;
}

div.layout div.title {
	position: absolute;
	width:500px;
	top: 10px;
	left: 350px;
	height: 130px;
	background-color: #FDE2F3;
}

div.layout div.menu {
	position: absolute;
	top: 150px;
	left: 130px;
	height: 100px;
}


div.layout div.main {
	position: absolute;
	width:800px;
	top: 260px;
	left: 200px;
	height: 800px;
}
</style>
</head>
<body>
	<div class="layout">
		<div class="title">
			<tiles:insertAttribute name="title2" />
		</div>

		<div class="menu">
			<tiles:insertAttribute name="menu2" />
		</div>

		<div class="main">
			<tiles:insertAttribute name="main" />
		</div>
	</div>
</body>
</html>