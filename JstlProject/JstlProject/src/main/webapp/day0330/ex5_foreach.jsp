<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<%
	List<String> list = new ArrayList<>();

	list.add("red");
	list.add("pink");
	list.add("green");
	list.add("orange");
	list.add("magenta");

	request.setAttribute("list", list);
	request.setAttribute("total", list.size());

	session.setAttribute("id", "angel");
	%>

	<h3>1~10까지 출력</h3>
	<c:forEach var="a" begin="1" end="10">
${a }&nbsp;
</c:forEach>

	<h3>0~30까지 3의 배수 출력</h3>
	<c:forEach var="a" begin="1" end="30" step="3">
${a }&nbsp;
</c:forEach>

	<hr>

	<h3>list에는 총 ${requestScope.total }개의 상품이 있습니다.</h3>
	<h3>list에는 총 ${total }개의 상품이 있습니다.</h3>

	<hr>

	<h3>세션아이디 출력</h3>
	<h4>
		현재 로그인한 아이디는 ${sessionScope.id }입니다.
		</h3>
		<h4>
			현재 로그인한 아이디는 ${id }입니다.
			</h3>

			<hr>

			<h3>list 전체를 테이블로 출력</h3>
			<table class="table table-bordered" style="width: 300px">
				<tr>
					<th>번호</th>
					<th>인덱스</th>
					<th>색상</th>
				</tr>

				<c:forEach var="s" items="${list }" varStatus="i">
					<tr>
						<td>${i.count }</td>
						<td>${i.index }</td>
						<td style="color: ${s};">${s }</td>
					</tr>
				</c:forEach>
			</table>
			
			<hr>
			
			<h3>list 2~4까지 테이블로 출력</h3>
			<table class="table table-bordered" style="width: 300px">
				<tr>
					<th>번호</th>
					<th>인덱스</th>
					<th>색상</th>
				</tr>

				<c:forEach var="s" items="${list }" begin="2" end="4" varStatus="i">
					<tr>
						<td>${i.count }</td>
						<td>${i.index }</td>
						<td style="color: ${s};">${s }</td>
					</tr>
				</c:forEach>
			</table>
</body>
</html>