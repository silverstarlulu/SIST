<%@page import="data.dao.ShopDao"%>
<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
div.cart, div.count {
	float: right;
	cursor: pointer;
}

span.carticon {
	font-size: 30px;
}

div.count {
	width: 30px;
	height: 30px;
	color: white;
	background-color: rgba(255, 0, 0, 0.7);
	border-radius: 100%;
	text-align: center;
	font-weight: bold;
	line-height: 30px;
	z-index: 10;
	position: relative;
	left: -10px;
	top: 10px;
	font-size: 0.7em;
}
</style>
<script>
	$(function() {
		$("div.cart").click(function() {
			location.href = "index.jsp?main=shop/mycart.jsp";
		})
	})
</script>
</head>
<%
//프로젝트 경로구하기
String root = request.getContextPath();
%>
<body>
	<a href="<%=root%>" style="color: black"><img width="140" height="100" src="image/고양이두마리.JPG" style="border-radius: 20px">&nbsp;&nbsp;&nbsp;JSP & jQuery MINI PROJECT</a>
	<div style="float: right; padding-right: 100px">
		<%
		String loginok = (String) session.getAttribute("loginok");
		String myid = (String) session.getAttribute("myid");
		MemberDao dao = new MemberDao();
		String name = dao.getName(myid);
		if (loginok == null) {
		%>
		<button type="button" class="btn btn-success" style="width: 100px" onclick="location.href='index.jsp?main=login/loginmain.jsp'">LOGIN</button>
		<%
		} else {
		%>
		<b><%=name%></b>님, 환영합니다.&nbsp;&nbsp;
		<button type="button" class="btn btn-danger" style="width: 100px" onclick="location.href='login/logoutaction.jsp'">LOGOUT</button>
		<%
		}
		%>

		<%
		ShopDao s_dao = new ShopDao();
		//카트개수
		int cartSize = s_dao.getCartList(myid).size();
		%>

		<div class="cart">
			<span class="carticon glyphicon glyphicon-shopping-cart"></span>
			<div class="count"><%=cartSize%></div>
		</div>

	</div>
</body>
</html>