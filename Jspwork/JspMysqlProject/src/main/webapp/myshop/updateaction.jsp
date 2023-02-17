<%@page import="myshop.model.MyshopDao"%>
<%@page import="myshop.model.MyshopDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<%-- <%
	String sangpum = request.getParameter("sangpum");
	String photo = request.getParameter("photo");
	String price = request.getParameter("price");
	String ipgoday = request.getParameter("ipgoday");
	String num = request.getParameter("num");

	MyshopDto dto = new MyshopDto();
	dto.setSangpum(sangpum);
	dto.setPhoto(photo);

	int p = Integer.parseInt(price);
	dto.setPrice(p);

	dto.setIpgoday(ipgoday);
	dto.setNum(num);

	MyshopDao dao = new MyshopDao();
	dao.updateshop(dto);

	response.sendRedirect("shoplist.jsp");
	%> --%>

	<jsp:useBean id="dao" class="myshop.model.MyshopDao"></jsp:useBean>
	<jsp:useBean id="dto" class="myshop.model.MyshopDto"></jsp:useBean>

	<jsp:setProperty property="*" name="dto" />
	<!--  dto의 모든 필드를 받아서 넣어줌 -->

	<%
	dao.updateshop(dto);

	response.sendRedirect("detailpage.jsp?num=" + dto.getNum());
	%>
</body>
</html>