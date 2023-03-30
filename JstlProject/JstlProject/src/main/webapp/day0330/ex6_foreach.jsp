<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<h2>foreach문, forToken문</h2>
	
	<c:forEach var="a" begin="1" end="20">
		[${a }]&nbsp;
	</c:forEach>
	
	<hr>
	
	<c:forEach var="a" begin="1" end="10" step="2">
		[${a }]&nbsp;
	</c:forEach>

	<hr>
	
	<%
	String [] mycolor={"pink","yellow","gray","black","red","orange"};
	%>
	
	<c:set var="mycolor" value="<%=mycolor %>"/>
	
	<table class="table table-bordered" style="width: 300px">
	<caption><b>전체 출력</b></caption>
	<tr>
		<th>index</th><th>count</th><th>color</th>
	</tr>
	
	<c:forEach var="colors" items="${mycolor }" varStatus="i">
		<tr>
			<td>${i.index }</td>
			<td>${i.count }</td>
			<td bgcolor="${colors }" style="color: white">${colors }</td>
		</tr>
	</c:forEach>
	</table>
	
	<hr>
	
	<c:set var="msg" value="장미,프리지아,달리아,제라늄,국화"/>
	${msg }<br>
	
	<h2>msg 값을 컴마로 분리해서 출력</h2>
	<c:forTokens var="s" items="${msg }" delims="," varStatus="i">
		<h3>${i.count } : ${s}</h3>
	</c:forTokens>
</body>
</html>