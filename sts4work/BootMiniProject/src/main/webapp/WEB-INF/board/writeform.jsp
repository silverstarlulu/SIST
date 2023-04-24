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

table {
	font-size: 1.2em;
}
</style>
</head>
<body>
	<form action="insert" method="post" enctype="multipart/form-data">
		<table class="table table-bordered"
			style="margin: 20px; width: 800px">
			<caption>
				<b>회원전용게시판</b>
			</caption>
			<tr>
				<th width="120" bgcolor="#C0DBEA">제목</th>
				<td><input type="text" name="subject" class="form-conrol"
					required="required" autofocus="autofocus"></td>
			</tr>
			<tr>
				<th width="120" bgcolor="#C0DBEA">업로드</th>
				<td><input type="file" name="upload" class="form-conrol"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><textarea name="content"
						style="width: 790px; height: 400px;" class="form-control" required="required"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-success">글 올리기</button>
					<button type="button" class="btn btn-warning" onclick="location.href='list'">목록</button></td>
			</tr>


		</table>
	</form>
</body>
</html>