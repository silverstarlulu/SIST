<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
div.layout {
	border: 0px solid gray;
	position: absolute;
	font-family: 'Noto Sans KR', sans-serif;
}

div.title {
	width: 100%;
	height: 100px;
	line-height: 80px;
	font-size: 25px;
	text-align: center;
	font-weight: 600;
	top: 10px;
}

div.menu {
	width: 100%;
	height: 80px;
	font-size: 20px;
	top: 120px;
	text-align: center;
	line-height: 80px;
}

div.info {
	width: 190px;
	height: 150px;
	line-height: 10px;
	font-size: 15pt;
	top: 240px;
	border: 0px solid gray;
	border-radius: 20px;
	left: 15px;
	padding: 20px 10px;
	font-size: 15pt;
	background-color: #DCE6E7;
}

div.main {
	width: 1000px;
	height: 1100px;
	font-size: 12pt;
	top: 220px;
	left: 220px;
	margin-left: 50px;
	padding: 20px 10px;
}
</style>
</head>
<%
//프로젝트 경로구하기
String root = request.getContextPath();

//메인페이지
String mainPage = "layout/main.jsp";
//메인페이지 없을 때도 있으므로
//url을 통해서 main 값을 읽어서 메인페이지에 출력
if (request.getParameter("main") != null) {
	mainPage = request.getParameter("main");
}
%>
<body>
	<div class="layout title">
		<jsp:include page="layout/title.jsp" />
	</div>

	<div class="layout menu">
		<jsp:include page="layout/menu.jsp" />
	</div>

	<div class="layout info">
		<jsp:include page="layout/info.jsp" />
	</div>

	<div class="layout main">
		<jsp:include page="<%=mainPage%>" />
	</div>

</body>
</html>