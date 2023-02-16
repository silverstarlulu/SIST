<%@page import="java.util.Vector"%>
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
<style>
body {
	text-align: center;
	font-family: 'Poor Story', cursive;
	font-size: 18px;
}

th {
	text-align: center;
	background-color: wheat;
	font-size: 20px;
}
</style>
</head>
<%
MyshopDao dao = new MyshopDao();
Vector<MyshopDto> list = dao.showAllSangpum();
%>
<body>
	<form action="updateaction.jsp" method="post">
		<table class="table table-stripped" style="width: 800px">
			<caption>
				<b>상품목록</b>
			</caption>
			<tr>
				<th width="70">상품번호</th>
				<th width="100">상품명</th>
				<th width="100">상품사진</th>
				<th width="100">상품가격</th>
				<th width="100">입고날짜</th>
				<th width="150">등록날짜</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
				MyshopDto dto = list.get(i);
			%>
			<tr>
				<td style="vertical-align: middle"><%=i + 1%></td>
				<td style="vertical-align: middle"><%=dto.getSangpum()%></td>
				<td style="vertical-align: middle">
					<img src="../쇼핑몰사진/<%=dto.getPhoto()%>.jpg" style="width: 70px; height: 70px; border-radius: 100%">
				</td>
				<td style="vertical-align: middle"><%=dto.getPrice()%></td>
				<td style="vertical-align: middle"><%=dto.getIpgoday()%></td>
				<td style="vertical-align: middle"><%=dto.getWriteday()%></td>
				<%
				}
				%>
			</tr>

		</table>
	</form>
</body>
</html>