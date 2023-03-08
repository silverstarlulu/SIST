<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	<form action="shop/addaction.jsp" method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 600px;">
			<caption>
				<b>상품등록</b>
			</caption>
			<tr>
				<td style="background-color: #A0C8BB; color: white; text-align: center; vertical-align: middle">
					<b>카테고리</b>
				</td>
				<td>
					<select style="width: 200px" name="category" class="form-control" required="required">
						<option value="피규어">피규어</option>
						<option value="선물세트">선물세트</option>
						<option value="의상">의상</option>
						<option value="악세서리" selected="selected">악세서리</option>
						<option value="게임기기">게임기기</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="background-color: #A0C8BB; color: white; text-align: center; vertical-align: middle">
					<b>상품명</b>
				</td>
				<td>
					<input type="text" name="sangpum" class="form-control" required="required" placeholder="상품명 입력" style="width: 200px">
				</td>
			</tr>
			<tr>
				<td style="background-color: #A0C8BB; color: white; text-align: center; vertical-align: middle">
					<b>상품가격</b>
				</td>
				<td>
					<input type="text" name="price" class="form-control" required="required" placeholder="가격 입력" style="width: 120px">
				</td>
			</tr>
			<tr>
				<td style="background-color: #A0C8BB; color: white; text-align: center; vertical-align: middle">
					<b>상품이미지</b>
				</td>
				<td>
					<input type="file" name="photo" style="width: 300px; font-size: 0.9em; color: gray">
				</td>
			</tr>
			<tr>
				<%
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String day = sdf.format(new Date());
				%>
				<td style="background-color: #A0C8BB; color: white; text-align: center; vertical-align: middle">
					<b>입고일</b>
				</td>
				<td>
					<input type="date" name="ipgoday" required="required" value="<%=day%>" style="font-size: 0.9em;">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="submit" class="btn btn-success btn-sm">상품저장</button>
					<button type="button" class="btn btn-info btn-sm" onclick="location.href='index.jsp?main=shop/shoplist.jsp'">상품목록</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>