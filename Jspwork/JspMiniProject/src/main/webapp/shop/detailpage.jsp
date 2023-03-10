<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ShopDto"%>
<%@page import="data.dao.ShopDao"%>
<%@page import="data.dao.MemberDao"%>
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
img.large {
	width: 450px;
}
</style>
</head>
<%
String shopnum = request.getParameter("shopnum");
//로그인상태
String loginok = (String) session.getAttribute("loginok");
//로그인 아이디
String myid = (String) session.getAttribute("myid");

//아이디에 해당하는 멤버의 시퀀스 번호 가져오기
MemberDao m_dao = new MemberDao();
String num = m_dao.getNum(myid);

//해당상품에 대한 데이터
ShopDao s_dao = new ShopDao();
ShopDto dto = s_dao.getShopData(shopnum);
%>
<body>
	<form id="frm">
		<!-- hidden: num, shopnum (장바구니 db로 들어가야하므로) -->
		<input type="hidden" name="shopnum" value="<%=shopnum%>">
		<input type="hidden" name="num" value="<%=num%>">

		<table style="width: 800px">
			<tr>
				<td style="width: 500px;">
					<img src="shopsave/<%=dto.getPhoto()%>" class="large img-thumbnail">
				</td>

				<td style="width: 300px" valign="top">
					<h3>
						카테고리:&nbsp;<b><%=dto.getCategory()%></b>
					</h3>
					<h3>
						상품명:&nbsp;<b><%=dto.getSangpum()%></b>
					</h3>
					<%
					NumberFormat nf = NumberFormat.getCurrencyInstance();
					%>
					<h3>
						가격:&nbsp;<b><%=nf.format(dto.getPrice())%></b>
					</h3>
					<h3>
						개수&nbsp;
						<input style="width: 80px" type="number" min="1" max="10" value="1" step="1" name="cnt">
					</h3>

					<div style="margin-top: 50px; margin-left: 30px;">
						<button type="button" class="btn btn-success" style="width: 100px" id="btncart">장바구니</button>
						<button type="button" class="btn btn-info" style="width: 100px" onclick="location.href='index.jsp?main=shop/shoplist.jsp'">상품목록</button>
					</div>
				</td>
			</tr>
		</table>

		<script type="text/javascript">
		$("#btncart").click(function () {
			var formdata=$("#frm").serialize();
			//alert(formdata);
			
			$.ajax({
				type: "post",
				url:"shop/detailproc.jsp",
				data:formdata,
				dataType:"html",
				success:function(res){
					var a=confirm("해당 상품을 장바구니에 담았습니다.\n장바구니로 이동할까요?");
					
					if(a){
						location.href="index.jsp?main=shop/mycart.jsp";
					}
				}
			})
		})
		</script>
	</form>
</body>
</html>