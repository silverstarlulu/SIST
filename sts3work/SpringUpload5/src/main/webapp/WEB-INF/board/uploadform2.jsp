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
<form action="upload2" method="post" enctype="multipart/form-data">

		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>스프링 파일 업로드 여러개</b>
			</caption>
			<tr>
				<th bgcolor="pink" width="100">제목</th>
				<td><input type="text" name="title" class="form-control"
					style="width: 150px"></td>
			</tr>

			<tr>
				<th bgcolor="pink" width="100">업로드</th>
				<td><input type="file" name="photo" class="form-control"
					style="width: 300px" multiple="multiple"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-info">업로드 #2</button></td>
			</tr>
		</table>
	</form>
</body>
</html>