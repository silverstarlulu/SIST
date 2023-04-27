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
<c:if test="${sessionScope.loginOk==null }">
	<script>
		alert("로그인 후 글 작성이 가능합니다.");
		history.back();
	</script>
</c:if>
<body>
	<div style="margin-left: 200px">
		<form action="insert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="currentPage" value="${currentPage }">
			<input type="hidden" name="num" value="${num }"> <input
				type="hidden" name="regroup" value="${regroup }"> <input
				type="hidden" name="restep" value="${restep }"> <input
				type="hidden" name="relevel" value="${relevel }"> <input
				type="hidden" name="id" value="${sessionScope.loginUser }">
			<input type="hidden" name="name" value="${sessionScope.loginName }">

			<table class="table table-bordered" style="width: 300px">
				<caption>
					<b> <c:if test="${num==0 }">새글 쓰기</c:if> <c:if
							test="${num!=0 }">${subject }_ 답글 쓰기</c:if>
					</b>
				</caption>

				<tr>
					<th width="100" bgcolor="BA90C6" style="color: white">제목</th>
					<td><input type="text" name="subject" class="form-control"
						required="required" style="width: 300px"></td>
				</tr>

				<tr>
					<th width="100" bgcolor="BA90C6" style="color: white">사진</th>
					<td><input type="file" name="upload" multiple="multiple"
						class="form-control" style="width: 300px"></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><textarea
							style="width: 380px; height: 200px" name="content"
							class="form-control"></textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-default">저장</button>
						<button type="button" class="btn btn-default"
							onclick="location.href='list'">취소</button>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>