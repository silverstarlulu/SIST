<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ShopDto"%>
<%@page import="java.util.List"%>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<script type="text/javascript">
	/* $("#tabs").tabs(); */
</script>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	ShopDao dao = new ShopDao();
	List<ShopDto> list = dao.getAllSangpum();
	%>

	<!-- 	<div id="tabs">
		<a href="#tabs-1">전체 상품</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#tabs-2">피규어</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#tabs-3">선물세트</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#tabs-4">게임기기</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#tabs-5">의상</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#tabs-6">악세서리</a>&nbsp;&nbsp;&nbsp;&nbsp;
	</div> -->

	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#tabs-1">전체상품</a></li>
			<li><a data-toggle="tab" href="#tabs-2">피규어</a></li>
			<li><a data-toggle="tab" href="#tabs-3">선물세트</a></li>
			<li><a data-toggle="tab" href="#tabs-4">게임기기</a></li>
			<li><a data-toggle="tab" href="#tabs-5">의상</a></li>
			<li><a data-toggle="tab" href="#tabs-6">악세서리</a></li>
		</ul>
	
	<div class="tab-content">
	<div id="tabs-1" class="tab-pane fade in active">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>전체상품목록</b>
			</caption>
			<tr>
				<%
				NumberFormat nf = NumberFormat.getCurrencyInstance();
				int i = 0;
				for (ShopDto dto : list) {
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	
		<div id="tabs-2" class="tab-pane fade">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>피규어</b>
			</caption>
			<tr>
				<%
				nf = NumberFormat.getCurrencyInstance();
				i = 0;
				for (ShopDto dto : list) {
					
					if(dto.getCategory().equals("피규어")){
					
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	
	<div id="tabs-3" class="tab-pane fade">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>선물세트</b>
			</caption>
			<tr>
				<%
				nf = NumberFormat.getCurrencyInstance();
				i = 0;
				for (ShopDto dto : list) {
					
					if(dto.getCategory().equals("선물세트")){
					
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	
	<div id="tabs-4" class="tab-pane fade">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>게임기기</b>
			</caption>
			<tr>
				<%
				nf = NumberFormat.getCurrencyInstance();
				i = 0;
				for (ShopDto dto : list) {
					
					if(dto.getCategory().equals("게임기기")){
					
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	
	<div id="tabs-5" class="tab-pane fade">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>의상</b>
			</caption>
			<tr>
				<%
				nf = NumberFormat.getCurrencyInstance();
				i = 0;
				for (ShopDto dto : list) {
					
					if(dto.getCategory().equals("의상")){
					
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	
	<div id="tabs-6" class="tab-pane fade in">
		<p>
		<table class="table table-bordered" style="width: 1000px">
			<caption>
				<b>악세서리</b>
			</caption>
			<tr>
				<%
				nf = NumberFormat.getCurrencyInstance();
				i = 0;
				for (ShopDto dto : list) {
					
					if(dto.getCategory().equals("악세서리")){
					
					String photo = dto.getPhoto();

					int sale = (int) (Math.random() * 11) + 20;
				%>
				<td>
					<a><img style="width: 200px" src="shopsave/<%=photo%>" class="photo"> <br> <%=dto.getSangpum()%> <b style="color: red; font-size: 0.8em;"><%=sale%>% SALE</b>
						<span style="float: right;">
							<div style="color: gray; font-size: 13px">
								<%
								int price = (int) (dto.getPrice() + (dto.getPrice() * (sale / 100.0)));
								%>
								<strike><%=nf.format(price)%></strike>
							</div>
							<div style="color: black; font-size: 16px"><b>
								<%=nf.format(dto.getPrice())%></b>
							</div>
						</span>
					 </a>
				</td>
				<%
				if((i+1)%4==0){
					%><tr></tr><%
				}
				i++;
				}
				}
				%>
			</tr>
		</table>
		</p>
	</div>
	</div>
	</div>
</body>
</html>