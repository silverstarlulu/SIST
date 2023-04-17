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
<div style="width: 80%; margin: 0 auto" align="center">
	<c:if test="${count==0 }">
		<h1 class="alert alert-danger">입고된 서적이 없습니다.</h1>
	</c:if>
	<c:if test="${count>0 }">
		<h1 class="alert alert-info">총 ${count }권의 서적이 있습니다.</h1>
	</c:if>
	<button type="button" class="btn btn-info"
		onclick="location.href='inputForm'">서적입고</button>
	<br>
	<br>
	<c:forEach var="dto" varStatus="i" items="${list }">
		<table class="table table-bordered"
			style="width: 220px; height: 480px; float:left; margin: 5px 10px;">
			<tr>
				<td colspan="2" width="150" height="200" style="text-align: center"><c:if
						test="${dto.bookphoto!='no' }">
						<img src="/photo/${dto.bookphoto }" width="150" height="200">
					</c:if> <c:if test="${dto.bookphoto=='no' }">
						<img src="/photo/no image.jpg" width="150" height="200">
					</c:if></td>
			</tr>
			<tr>
				<td colspan="2" height="75"><b style="font-size: 1.2em">${dto.bookname }</b></td>
			</tr>
			<tr>
				<td height="50">저자: ${dto.bookwriter }</td>
				<td height="50">출판사 : ${dto.bookcompany }</td>
			</tr>
			<tr>
				<td><fmt:formatNumber value="${dto.bookprice }" type="currency"></fmt:formatNumber></td>
				<td><fmt:formatDate value="${dto.ipgoday }" pattern="yy-MM-dd" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="button"
						class="btn btn-info btn-sm"
						onclick="location.href='modify?num=${dto.num}'">수정</button>
					<button type="button" class="btn btn-warning btn-sm"
						onclick="location.href='delete?num=${dto.num}'">삭제</button></td>
			</tr>

			<c:if test="${i.count%5==0 }">
				<br>
			</c:if>

		</table>

	</c:forEach>
	</div>
</body>
</html>