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
		<h2 class="alert alert-danger">저장된 차량의 정보가 없습니다.</h2>
	</c:if>
	<c:if test="${totalCount>0 }">
		<h2 class="alert alert-info">
			총 <b>${totalCount }</b>대의 차량이 있습니다.
		</h2>

		<table class="table table-hover" style="width: 800px">
			<tr bgcolor="#F6DFEB">
				<th width="60" style="text-align: center">번호</th>
				<th width="150" style="text-align: center">차종</th>
				<th width="60" style="text-align: center">색상</th>
				<th width="100" style="text-align: center">가격</th>
				<th width="120" style="text-align: center">구입일</th>
				<th width="250" style="text-align: center">수정&nbsp;|&nbsp;삭제</th>
			</tr>

			<c:forEach var="dto" items="${list }" varStatus="i">
				<tr style="text-align: center;">
					<td>${i.count }</td>
					<td>${dto.carname }</td>
					<td><span class="glyphicon glyphicon-tint"
						style="color: ${dto.carcolor}"></span></td>
					<td><fmt:formatNumber type="currency">${dto.carprice }</fmt:formatNumber>
					</td>
					<td>${dto.carguip }</td>
					<td><button type="button" class="btn btn-info btn-xs"
							onclick="location.href='updateform?num=${dto.num}'">차량
							정보수정</button>
						<button type="button" class="btn btn-warning btn-xs"
							onclick="location.href='delete?num=${dto.num}'">차량 정보삭제</button></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<button type="button" style="width: 100px" class="btn btn-info"
		onclick="location.href='writeform'">차 정보 입력</button>
</body>
</html>