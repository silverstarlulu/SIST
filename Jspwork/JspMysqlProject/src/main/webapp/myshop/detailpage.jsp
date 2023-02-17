<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="myshop.model.MyshopDto"%>
<%@page import="myshop.model.MyshopDao"%>
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
body {
	font-size: 20px;
	font-family: 'Poor Story', cursive;
}

tr {
	text-align: center;
}

b {
	background-color: wheat
}
</style>
</head>
<%
String num = request.getParameter("num");
MyshopDao dao = new MyshopDao();
MyshopDto dto = dao.selectSangpum(num);

NumberFormat nf = NumberFormat.getCurrencyInstance();
%>
<body>
	<table class="table table-bordered" style="width: 500px">
		<tr>
			<td rowspan="3" width="300px">
				<img src="../쇼핑몰사진/<%=dto.getPhoto()%>.jpg">
			</td>
			<td style="vertical-align: middle">
				<b>상품명</b><br> <br><%=dto.getSangpum()%></td>
		</tr>
		<tr>
			<td style="vertical-align: middle">
				<b>상품가격</b><br> <br><%=nf.format(dto.getPrice())%></td>
		</tr>
		<tr>
			<td style="vertical-align: middle">
				<b>입고날짜</b><br> <br><%=dto.getIpgoday()%></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" class="btn btn-info btn-lg" onclick="history.back()">이전으로</button>
				<button type="button" class="btn btn-success btn-lg" onclick="location.href='addform.jsp'">상품추가</button>
				<button type="button" class="btn btn-warning btn-lg" onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">상품수정</button>
				<button type="button" class="btn btn-danger btn-lg" onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">상품삭제</button>
			</td>
		</tr>
	</table>

</body>
</html>