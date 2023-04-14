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
	<form action="insert" method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 450px">
			<caption>
				<b>새 글 쓰기</b>
			</caption>

			<tr>
				<th width="120" bgcolor="#F9D949"
					style="text-align: center; vertical-align: middle; color: #393646;">작성자</th>
				<td><input type="text" name="writer" required="required"
					class="form-contorl" style="width: 300px;"></td>
			</tr>

			<tr>
				<th width="120" bgcolor="#F9D949"
					style="text-align: center; vertical-align: middle; color: #393646;">제목</th>
				<td><input type="text" name="subject" required="required"
					class="form-contorl" style="width: 300px;"></td>
			</tr>

			<tr>
				<th width="120" bgcolor="#F9D949"
					style="text-align: center; vertical-align: middle; color: #393646;">이미지</th>
				<td><input type="file" name="upload" class="form-contorl"
					style="width: 300px;"></td>
			</tr>

			<tr>
				<th width="120" bgcolor="#F9D949"
					style="text-align: center; vertical-align: middle; color: #393646;">내용</th>
				<td><textarea required="required" name="content"
						style="width: 300px; height: 200px;" class="form-contorl"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button style="background-color: #FFABAB; border-color: #FFABAB;" type="submit"
						class="btn btn-info">서버전송</button>
					<button class="btn btn-info" style="background-color: white; color: #393646; border-color: #393646" type="button"
						onclick="location.href='/'">취소</button></td>
			</tr>
		</table>

	</form>
</body>
</html>