<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
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
	font-size: 22px;
}

th {
	text-align: center;
	background-color: wheat;
	font-size: 25px;
}
</style>
</head>
<%
MyshopDao dao = new MyshopDao();
Vector<MyshopDto> list = dao.showAllSangpum();
%>
<body>
	<table class="table table-bordered" style="width: 800px">
		<caption>
			<b>상품목록</b>
		</caption>
		<tr>
			<th width="70">상품번호</th>
			<th width="150">상품명</th>
			<th width="100">상품가격</th>
			<th width="100">입고날짜</th>
			<th width="150">등록날짜</th>
		</tr>
		<%
		if (list.size() == 0) {
		%><tr style="height: 100px">
			<td colspan="5" align="center">
				<h3>
					<b>등록된 상품이 없습니다!</b>
				</h3>
			</td>
		</tr>
		<%
		} else {
		NumberFormat nf = NumberFormat.getCurrencyInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH시");

		for (int i = 0; i < list.size(); i++) {
			MyshopDto dto = list.get(i);
		%>
		<tr style="height: 100px">
			<td style="vertical-align: middle"><%=i + 1%></td>
			<td style="vertical-align: middle; text-align: left">
				<img src="../쇼핑몰사진/<%=dto.getPhoto()%>.jpg" style="width: 50px; height: 50px; border-radius: 5px; margin-right: 10px"> <a href="detailpage.jsp?num=<%=dto.getNum()%>" style="color: black;"><%=dto.getSangpum()%></a>
			</td>
			<td style="vertical-align: middle"><%=nf.format(dto.getPrice())%></td>
			<td style="vertical-align: middle"><%=dto.getIpgoday()%></td>
			<td style="vertical-align: middle"><%=sdf.format(dto.getWriteday())%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="5" align="right">
				<button type="button" class="btn btn-info btn-lg" onclick="location.href='addform.jsp'">상품추가</button>
			</td>
		</tr>
	</table>
</body>
</html>