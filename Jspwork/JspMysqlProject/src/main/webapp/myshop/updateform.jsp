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
	font-family: 'Poor Story', cursive;
	font-size: 20px
}
</style>

<script>
	$(function() {
		var srcImg = $("#photo").val();
		$("#myphoto").attr("src", "../쇼핑몰사진/" + srcImg + ".jpg")

	})
</script>

</head>
<%
String num = request.getParameter("num");
MyshopDao dao = new MyshopDao();
MyshopDto dto = dao.selectSangpum(num);
%>
<body>
	<form action="updateaction.jsp" method="post">
	<input type="hidden" name="num" value="<%=num%>">
		<table class="table table-stripped" style="width: 400px">
			<caption>
				<b>상품수정</b>
			</caption>
			<tr>
				<th width="100" bgcolor="wheat">상품명</th>
				<td>
					<input type="text" name="sangpum" required="required" class="form-control" value="<%=dto.getSangpum()%>">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="wheat">상품이미지</th>
				<td>
					<div>
						<select name="photo" id="photo" class="form-select" style="width: 150px">
							<option value="11" <%=dto.getPhoto().equals("11")?"selected":""%>>단화</option>
							<option value="26" <%=dto.getPhoto().equals("26")?"selected":""%>>머리핀</option>
							<option value="27" <%=dto.getPhoto().equals("27")?"selected":""%>>원피스</option>
							<option value="21" <%=dto.getPhoto().equals("21")?"selected":""%>>반지</option>
							<option value="24" <%=dto.getPhoto().equals("24")?"selected":""%>>바지</option>
							<option value="30" <%=dto.getPhoto().equals("30")?"selected":""%>>머리띠</option>
						</select>
						<img width="30" height="30" src="" id="myphoto">
					</div>
					<script>
						$("#photo").change(function() {
							var s = "../쇼핑몰사진/" + $(this).val() + ".jpg";
							$("#myphoto").attr("src", s);
						})
					</script>
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="wheat">상품가격</th>
				<td>
					<input type="text" name="price" required="required" class="form-control" value="<%=dto.getPrice()%>">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="wheat">입고일</th>
				<td>
					<input type="date" name="ipgoday" class="form-control" value="<%=dto.getIpgoday()%>">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-info">상품수정</button>
					<button type="button" class="btn btn-success" onclick="location.href='shoplist.jsp'">상품목록</button>
				</td>
			</tr>

		</table>

	</form>
</body>
</html>