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
		<form action="update" method="post" enctype="multipart/form-data">
			<input type="hidden" name="currentPage" value="${currentPage }">
			<input type="hidden" name="num" value="${dto.num }">

			<table class="table table-bordered" style="width: 300px">
				<caption>
					<b> <c:if test="${dto.restep==0 }">글 수정</c:if> <c:if
							test="${dto.restep!=0 }">답글 수정</c:if>
					</b>
				</caption>

				<tr>
					<th width="100" bgcolor="41644A" style="color: white">작성자</th>
					<td><input type="text" name="writer" class="form-control"
						readonly="readonly" value="${dto.writer }" style="width: 300px"></td>
				</tr>

				<tr>
					<th width="100" bgcolor="41644A" style="color: white">제목</th>
					<td><input type="text" name="subject" class="form-control"
						value="${dto.subject }" style="width: 300px"></td>
				</tr>

				<tr>
					<th width="100" bgcolor="41644A" style="color: white">사진</th>
					<td><input type="file" name="upload" multiple="multiple"
						class="form-control" style="width: 300px">
					<c:if test="${dto.photo!='no' }">
							<c:forTokens var="photos" items="${dto.photo }" delims=",">
								<a href="../photo/${photos }"> 
									<img src="../photo/${photos }" style="width: 50px">
								</a>
							</c:forTokens>
						</c:if></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><textarea
							style="width: 380px; height: 200px" name="content"
							class="form-control">${dto.content }</textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-default">수정</button>
						<button type="button" class="btn btn-default"
							onclick="location.href='list'">취소</button>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>