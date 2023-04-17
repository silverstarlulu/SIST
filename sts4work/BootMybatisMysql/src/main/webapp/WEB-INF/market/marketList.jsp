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
	<c:if test="${totalCount==0 }">
		<h1 class="alert alert-danger">저장된 상품정보가 없습니다.</h1>
	</c:if>
	<c:if test="${totalCount>0 }">
		<h1 class="alert alert-info">총 ${totalCount }개의 정보가 있습니다.</h1>
	</c:if>
	<button type="button" class="btn btn-info"
		onclick="location.href='add'">상품입력</button>
	<table class="table table-bordered" style="width: 400px">
		<c:forEach var="dto" varStatus="i" items="${list }">
			<tr>
				<td width="200" rowspan="4"><c:if
						test="${dto.photoname!=null }">
						<img src="/upload/${dto.photoname }" width="200">
					</c:if> <c:if test="${dto.photoname==null }">
						<img src="/upload/no image.jpg" width="200">
					</c:if></td>
				<td><b>상품명 : </b>${dto.sang }</td>
			</tr>
			<tr>
				<td><b>단가 : </b> <fmt:formatNumber value="${dto.dan }"
						type="currency"></fmt:formatNumber></td>
			</tr>
			<tr>
				<td><b>입고일 : </b> <fmt:formatDate value="${dto.ipgo }"
						pattern="yy-MM-dd" /></td>
			</tr>
			<tr>
				<td align="center"><button type="button"
						class="btn btn-info btn-sm"
						onclick="location.href='modify?num=${dto.num}'">수정</button>
					<button type="button" class="btn btn-warning btn-sm"
						onclick="location.href='delete?num=${dto.num}'">삭제</button></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>