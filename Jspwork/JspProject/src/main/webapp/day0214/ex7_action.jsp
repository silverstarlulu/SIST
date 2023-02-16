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
div.box {
	float: left;
	width: 30px;
	height: 30px;
	border-radius: 30px;
	margin-right: 10px
}
</style>
</head>
<body>
	<%
	String sang = request.getParameter("sang");
	String[] scolor = request.getParameterValues("scolor");
	String size = request.getParameter("size");
	String chuga = request.getParameter("chuga");
	%>

	<h4>
		상품명 :
		<%=sang%></h4>
	<h4>
		<div>색상 :</div>
		<%
		if (scolor == null) {
		%>
		선택한 색상이 없습니다.
		<%
		} else {
		for (int i = 0; i < scolor.length; i++) {
		%>
		<div class="box" style="background-color: <%=scolor[i]%>"></div>
		<%
		}
		}
		%>
	</h4>
	<h4>
		사이즈 :
		<%=size%></h4>
	<h4>
		추가상품 :
		<%=chuga%></h4>
</body>
</html>