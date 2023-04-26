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
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

table {
	font-size: 1.2em;
}
</style>
<body>
	<c:if test="${totalCount>0 }">
		<h1 class="alert alert-info">총 ${totalCount }개의 상품이 입고되었습니다.</h1>
	</c:if>
	<c:if test="${sessionScope.loginOk!=null }">
		<div style="float: right">
			<button type="button" onclick="location.href='form'"
				class="btn btn-info" style="font-size: 1.4em">상품입고</button>
			<br> <br>
		</div>
	</c:if>

	<br>
	<br>
	<table class="table table-bordered" style="width: 1000px">
		<tr style="background-color: #6C9BCF; color: white">
			<th width="60" style="text-align: center">번호</th>
			<th width="360" style="text-align: center">상품명</th>
			<th width="160" style="text-align: center">색상</th>
			<th width="100" style="text-align: center">가격</th>
			<th width="260" style="text-align: center">입고일</th>
		</tr>
		<c:if test="${totalCount==0 }">
			<tr>
				<td colspan="5" align="center">상품이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:if test="${totalCount>0 }">
			<c:forEach var="dto" items="${list }">
				<tr align="center" style="height: 20px">
					<td>${no }</td>
					<c:set value="${no-1 }" var="no" />
					<td><a style="color: black;"
						href="detail?num=${dto.num }&currentPage=${currentPage}">&nbsp;${dto.sangname }</a>
					</td>
					<td><div
							style="width: 20px; height: 20px; border-radius: 5px; background-color: ${dto.color }"></div></td>
					<td><fmt:formatNumber type="currency" value="${dto.price }" /></td>
					<td>${dto.ipgoday }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

	<!-- 페이징 -->
	<div style="width: 800px; text-align: center;">
		<ul class="pagination">

			<!-- 이전 -->
			<c:if test="${startPage > 1 }">
				<li><a href="list?currentPage=${startPage - 1 }">이전</a></li>
			</c:if>
			<c:forEach var="pp" begin="${startPage }" end="${endPage }">

				<c:if test="${pp == currentPage }">
					<li class="active"><a href="list?currentPage=${pp }">${pp }</a></li>
				</c:if>
				<c:if test="${pp != currentPage }">
					<li><a href="list?currentPage=${pp }">${pp }</a></li>
				</c:if>

			</c:forEach>

			<!-- 다음 -->
			<c:if test="${endPage < totalPage }">
				<li><a href="list?currentPage=${endPage + 1 }">다음</a></li>
			</c:if>

		</ul>
	</div>
</body>
</html>