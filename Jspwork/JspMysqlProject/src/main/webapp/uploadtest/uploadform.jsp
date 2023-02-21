<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<form action="uploadaction.jsp" method="post" enctype="multipart/form-data">
		<table class="table table-stripped" style="width: 500px">
			<tr>
				<th width="100">이름</th>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<th width="100">제목</th>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<th width="100">파일</th>
				<td>
					<input type="file" name="uploadFile">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="업로드" class="btn btn-warning">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>