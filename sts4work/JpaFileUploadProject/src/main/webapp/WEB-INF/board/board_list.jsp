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
	<div style="margin: 15px; width: 70%; margin: 0 auto">
		<h1 class="alert" style="background-color: #F9D949; color: #393646;"
			align="center">
			총 <b>${count }개</b> 글이 있습니다.
		</h1>
		<table class="table table-bordered">
			<tr>
				<th style="text-align: center">번호</th>
				<th style="text-align: center" width="400">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">작성일</th>
			</tr>


			<c:if test="${count==0 }">
				<td colspan="4" align="center">글이 존재하지 않습니다.</td>
			</c:if>

			<c:forEach var="dto" varStatus="i" items="${list }">
				<tr align="center">
					<td>${i.count }</td>
					<td style="text-align: left"><a href='detail?num=${dto.num }'>&nbsp;&nbsp;&nbsp;${dto.subject }</a></td>
					<td>${dto.writer }</td>
					<td><fmt:formatDate value="${dto.writeday }"
							pattern="yyyy-MM-dd hh:mm" /></td>
				</tr>
			</c:forEach>


		</table>
		<button
			style="background-color: #FFABAB; border-color: #FFABAB; float: right"
			type="button" onclick="location.href='writeform'"
			class="btn btn-info">글쓰기</button>
	</div>
</body>
</html>