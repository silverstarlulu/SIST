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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}
</style>
</head>
<body>
	<div style="margin: 0 auto; width: 90%" align="center">
		<c:if test="${count==0 }">
			<h1 class="alert" style="background-color: #FEFAE0; color: #7C96AB">현재
				입고된 상품이 없습니다.</h1>
			<button type="button" onclick="location.href='form'"
				class="btn btn-sm"
				style="background-color: #A9907E; color: white; margin-bottom: 20px; float: right">상품입고</button>
		</c:if>
		<c:if test="${count>0 }">
			<h1 class="alert" style="background-color: #7C96AB; color: #FEFAE0">총
				${count }개의상품이 입고되어있습니다.</h1>
			<button type="button" onclick="location.href='form'"
				class="btn btn-sm"
				style="background-color: #A9907E; color: white; margin-bottom: 20px; float: right">상품입고</button>
			<table class="table table-hover" style="width: 600px">
				<c:forEach var="dto" varStatus="i" items="${list }">
					<tr>
						<td width="200" rowspan="4"><c:if
								test="${dto.photoname!=null }">

								<a href="#"> <img src="/photo/${dto.dimage }" width="150">
								</a>

							</c:if> <c:if test="${dto.photoname==null }">
								<a href="#"> <img src="/image/no image.jpg" width="150"></a>
							</c:if></td>
						<td><b>상품명 : ${dto.sangpum }</b></td>
					</tr>
					<tr>
						<td><b>단가 : <fmt:formatNumber value="${dto.price }"
									type="currency"></fmt:formatNumber></b></td>
					</tr>
					<tr>
						<td><b>입고일 : <fmt:formatDate value="${dto.ipgoday }"
									pattern="yy-MM-dd" /></b></td>
					</tr>
					<tr>
						<td align="center"><button type="button"
								class="btn btn-default btn-sm"
								style="background-color: #E1EEDD; color: #675D50; border: 1px solid #675D50"
								onclick="location.href='modify?num=${dto.num}'">수정</button>
							<button type="button" class="btn btn-default btn-sm"
								style="background-color: #E1EEDD; color: #675D50; border: 1px solid #675D50"
								onclick="location.href='delete?num=${dto.num}'">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>