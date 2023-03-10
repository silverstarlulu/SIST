<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
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
<style>
div.sangpum img.photo {
	width: 90px;
	border: 2px solid gray;
}

div.sangpum,span.del {
	cursor: pointer;
}
</style>
<script>
$(function(){
	$("div.sangpum").click(function() {
		var shopnum = $(this).attr("shopnum");
		//alert(shopnum);
		location.href = "index.jsp?main=shop/detailpage.jsp?shopnum="+ shopnum;
	})
	
	$("#allcheck").click(function(){
		//alert("click");
		var chk=$(this).is(":checked");
		$("td .idx").prop("checked",chk);
	})
	
	$("span.del").click(function(){
		var idx = $(this).attr("idx");
		var a = confirm("해당 상품을 장바구니에서 삭제하시겠습니까?");
		if(a) {
			deletesang(idx);
			
			location.reload();
			alert("삭제 완료");
		}
	})
	
	$("#btncartdel").click(function(){
		var cnt=$(".idx:checked").length;
		//alert(cnt);
		if(cnt==0) alert("삭제할 상품을 선택해주세요.");
		else var a = confirm(cnt+"개의 상품을 삭제합니다.");
		
		if(a) {
			$(".idx:checked").each(function(i,ele){
				var idx=$(this).attr("idx");
				//console.log(idx);
				deletesang(idx);
				
				location.reload();
			})
			
		}
		
		alert("삭제 완료");
	})
})

function deletesang(idx) {
	$.ajax({
		type:"get",
		data:{"idx":idx},
		dataType:"html",
		url:"shop/cartdelete.jsp",
		success:function(res){
			
		}
	})
}
</script>
</head>
<body>
	<%
	String myid = (String) session.getAttribute("myid");

	MemberDao m_dao = new MemberDao();
	String name = m_dao.getName(myid);

	ShopDao s_dao = new ShopDao();
	int cartSize = s_dao.getCartList(myid).size();

	List<HashMap<String, String>> list = s_dao.getCartList(myid);

	NumberFormat nf = NumberFormat.getCurrencyInstance();
	int sum = 0;
	%>
	<h1 class="alert alert-info" style="width: 1000px">
		<b><%=name%></b>님의 장바구니
	</h1>
	<h3 class="alert alert-success" style="width: 1000px">
		총
		<%=cartSize%>개의 상품이 있습니다.
	</h3>

	<table class="table table-striped" style="width: 1000px">
		<tr>
			<th style="width: 30px"><input type="checkbox" id="allcheck"></th>
			<th style="width: 400px">상품정보</th>
			<th style="width: 200px">개별상품금액</th>
			<th style="width: 200px">상품금액</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
			HashMap<String, String> map = list.get(i);

			//사진얻기
			String photo = map.get("photo");
		%>
		<tr>
			<td>
				<input type="checkbox" name="idx" class="idx" idx="<%=map.get("idx")%>">
			</td>

			<td width="400">
				<div shopnum="<%=map.get("shopnum")%>" class="sangpum">
					<img src="shopsave/<%=photo%>" class="photo" align="left" hspace="20">

					<h5>
						<b>상품명: <%=map.get("sangpum")%></b>
					</h5>
					<h5>
						<b>개수: <%=map.get("cnt")%>개
						</b>
					</h5>
					<h5>
						<b>날짜: <%=map.get("cartday")%></b>
					</h5>
				</div>
			</td>

			<td align="left" width="200">
				<%
				int price = Integer.parseInt(map.get("price"));
				%>
				<h4>
					<%=nf.format(price)%></h4>
			</td>

			<td align="left" width="200">
				<%
				int cnt = Integer.parseInt(map.get("cnt"));
				int total = price * cnt;
				sum += total;
				%>
				<h4 style="width: 200px"><%=nf.format(total)%> <span class="del glyphicon glyphicon-trash" idx="<%=map.get("idx") %>"></span></h4>
			</td>
		</tr>
		<%
		}
		%>

		<tr>
			<td colspan="4">
				<button type="button" class="btn btn-warning btn-lg" style="margin-left: 100px" id="btncartdel">선택상품삭제</button>
				<span style="font-size: 1.7em; float: right;">총 주문금액: <b style="color: tomato"><%=nf.format(sum)%></b> </span>
			</td>
		</tr>

	</table>
</body>
</html>