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
	<div style="margin: 30px">
		<form action="insert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="currentPage" value="${currentPage }">
			<input type="hidden" name="num" value="${num }"> <input
				type="hidden" name="regroup" value="${regroup }"> <input
				type="hidden" name="restep" value="${restep }"> <input
				type="hidden" name="relevel" value="${relevel }">

			<table class="table table-bordered" style="width: 300px">
				<caption>
					<b> <c:if test="${num==0 }">새글 쓰기</c:if> <c:if
							test="${num!=0 }">답글 쓰기</c:if>
					</b>
				</caption>

				<tr>
					<th width="100" bgcolor="BA90C6" style="color: white">작성자</th>
					<td><input type="text" name="writer" class="form-control"
						required="required" style="width: 300px"></td>
				</tr>

				<tr>
					<th width="100" bgcolor="BA90C6" style="color: white">비밀번호</th>
					<td><input type="password" name="pass" class="form-control"
						required="required" style="width: 300px"></td>
				</tr>

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
				<button type="button" class="btn btn-default" onclick="location.href='list'">취소</button>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>