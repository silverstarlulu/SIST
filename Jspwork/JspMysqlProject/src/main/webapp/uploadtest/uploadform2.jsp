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
	<form action="uploadaction2.jsp" method="post" enctype="multipart/form-data">
		<table class="table table-hover" style="width: 350px">
			<caption>
				<b>이미지 여러개 업로드</b>
			</caption>
			<tr>
				<th width="100" bgcolor="wheat">작성자</th>
				<td>
					<input type="text" name="writer" class="form-control" style="width: 200px">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="wheat">이미지</th>
				<td>
					<input type="file" name="photo1" class="form-control">
					<br>
					<input type="file" name="photo2" class="form-control">
					<br>
					<input type="file" name="photo3" class="form-control">
					<br>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-warning">전송</button>
				</td>
			</tr>

		</table>
	</form>
</body>
</html>