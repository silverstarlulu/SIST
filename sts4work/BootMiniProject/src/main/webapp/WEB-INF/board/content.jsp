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
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

a.download {
	color: black;
	font-size: 0.6em;
}

table {
	font-size: 1.4em;
}
</style>
</head>
<body>
	<table class="table table-bordered" style="width: 800px">
		<tr>
			<td><h3 style="font-size: 1.7em">
					<b>${dto.subject }</b> <span
						style="color: gray; float: right; font-size: 0.4em"><fmt:formatDate
							value="${dto.writeday }" pattern="yy-MM-dd HH:mm" />&nbsp;&nbsp;<b>조회:
							${dto.readcount }</b></span>
				</h3> <span>작성자: ${dto.loginUser }<span style="font-size: 0.6em">(${dto.name })</span></span>
				<c:if test="${dto.uploadfile!='no image' }">
					<span style="float: right"><a class="download"
						href="download?clip=${dto.uploadfile }"><span
							class="glyphicon glyphicon-download-alt">&nbsp;${dto.uploadfile }</span></a></span>
				</c:if></td>
		</tr>

		<tr>
			<td><c:if test="${bupload==true }">
					<h3>업로드 파일이 이미지입니다.</h3>
					<img src="../photo/${dto.uploadfile }" style="max-width: 300px">
				</c:if><br> <br> <pre>${dto.content }</pre><br></td>
		</tr>

		<tr>
			<td style="width: 100%"><c:if
					test="${sessionScope.loginOk!=null && sessionScope.loginUser==dto.loginUser }">
					<button type="button" class="btn btn-info btn-sm"
						onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage}'">수정</button>
					<button type="button" class="btn btn-danger btn-sm"
						onclick="location.href='delte?num${dto.num}&currentPage=${currentPage }'">삭제</button>
				</c:if> <c:if test="${sessionScope.loginOk!=null }">
					<button type="button" class="btn btn-info btn-sm"
						onclick="location.href='form'">글쓰기</button>
				</c:if>

				<button type="button" class="btn btn-success btn-sm"
					onclick="location.href='list?currentPage=${currentPage}'">목록으로</button></td>
		</tr>
	</table>
</body>
</html>