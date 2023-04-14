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
	<button style="margin: 10px" type="button" class="btn btn-info"
		onclick="location.href='writeform'">글쓰기</button>
	<table class="table table-bordered" style="width: 500px; margin: 20px">
		<tr>
			<td><b style="font-size: 2.5em;">${dto.subject }</b><br> <br>
				<span>${dto.writer }</span><span style="float: right"><fmt:formatDate
						value="${dto.writeday }" pattern="y-MM-dd HH:mm" /></span></td>
		</tr>
		<tr>
			<td style="height: 200px">${dto.content }<br> <br> <c:if
					test="${dto.photo!='no photo'}">
					<img width="300" src="/save/${dto.photo}">
				</c:if>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><button type="button"
					class="btn btn-info"
					onclick="location.href='updateform?num=${dto.num}'">수정</button>

				<button type="button" class="btn btn-info"
					onclick="location.href='delete?num=${dto.num}'">삭제</button>

				<button type="button" class="btn btn-info"
					onclick="location.href='list'">목록으로</button></td>
		</tr>
	</table>
</body>
</html>