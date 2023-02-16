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
	<form action="insertAction.jsp" method="post">
		<!-- 폼전송(insert)은 무조건 post 방식 -->
		<table class="table table-bordered" style="width: 350px">
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name" size="7" placeholder="이름" required="required" class="form-control">
				</td>
			</tr>

			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="addr" size="20" placeholder="주소" required="required" class="form-control">
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송" class="btn btn-info">
					<input type="button" value="목록" onclick="location.href='infoList.jsp'" class="btn btn-danger">
				</td>
			</tr>
		</table>

	</form>
</body>
</html>