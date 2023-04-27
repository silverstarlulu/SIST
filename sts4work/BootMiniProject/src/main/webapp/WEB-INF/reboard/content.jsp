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
<div style="margin: 50px">
		<table class="table table-bordered" style="width: 600px">
			<caption>
				<b>내용 보기</b>
			</caption>
			<tr>
				<td>
					<h2>
						<b>${dto.subject }</b>
					</h2> <span style="float: left">${dto.id }(${dto.name})</span><span
					style="float: right"><span>조회 : ${dto.readcount }&nbsp;&nbsp;|&nbsp;&nbsp;</span><span>작성일
							: <fmt:formatDate value="${dto.writeday }"
								pattern="yyyy-MM-dd HH:mm:ss" />
					</span></span>
				</td>
			</tr>
			<tr>
				<td><pre>${dto.content }</pre><br>
				<br> <c:if test="${dto.photo!='no' }">
						<c:forTokens var="photos" items="${dto.photo }" delims=",">
							<a href="../photo/${photos }"> <img src="../photo/${photos }"
								style="width: 150px">
							</a>
						</c:forTokens>
					</c:if></td>
			</tr>

			<tr>
				<td align="right">
					<button class="btn btn-default btn-sm" onclick="location.href='form'">글쓰기</button>
					<button class="btn btn-default btn-sm" onclick="location.href='form?num=${dto.num}&regroup=${dto.regroup }&restep=${dto.restep }&relevel=${dto.relevel }&currentPage=${currentPage }'">답글</button>
					<button class="btn btn-default btn-sm" onclick="location.href=''">수정</button>
					<button class="btn btn-default btn-sm" onclick="location.href=''">삭제</button>
					<button class="btn btn-default btn-sm" onclick="location.href='list?currentPage=${currentPage}'">목록</button>	
				</td>
			</tr>
		</table>
	</div>
</body>
</html>