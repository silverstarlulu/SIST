<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ex1_form</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
body {
	font-family: 'Poor Story', cursive;
}
</style>
</head>
<body>
	<form action="ex1_action.jsp" method="post">
		<table class="table table-bordered" style="width: 300px">
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name" placeholder="이름을 입력해주세요">
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>
					<input type="date" name="birth" value="1995-01-01">
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<input type="checkbox" value="게임" name="hobby">
					게임
					<input type="checkbox" value="공부" name="hobby">
					공부
					<input type="checkbox" value="여행" name="hobby">
					여행
					<input type="checkbox" value="코딩" name="hobby" checked="checked">
					코딩
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-warning btn-sm">서버전송</button>
					<button type="reset" class="btn btn-danger btn-sm">초기화</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>