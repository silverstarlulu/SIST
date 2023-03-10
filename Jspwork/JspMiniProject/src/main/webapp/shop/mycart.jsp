<%@page import="data.dao.MemberDao"%>
<%@page import="data.dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%
	String myid = (String) session.getAttribute("myid");
	ShopDao s_dao = new ShopDao();
	MemberDao m_dao = new MemberDao();
	String name = m_dao.getName(myid);
	int cartSize = s_dao.getCartList(myid).size();
	%>
	<h1 class="alert alert-info"><b><%=name%></b>님의 장바구니
	</h1>
	<h3 class="alert alert-success">
		총
		<%=cartSize%>개의 상품이 있습니다.
	</h3>
</body>
</html>