<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
body {
	font-family: 'Poor Story', cursive;
}

#b {
	margin: 0px 8px
}
</style>
</head>
<body>
	<form action="insertAction.jsp" method="post">
		<table class="table table-stripped" style="width: 500px; margin: 20px">
			<tr style="background-color: powderblue">
				<td colspan="2" align="center">
					<h4>
						<b style="color: white; font-weight: 600">가입 폼</b>
					</h4>
				</td>
			</tr>
			<tr>
				<th width="120">이름</th>
				<td>
					<input type="text" name="name" placeholder="이름입력" required="required">
				</td>
			</tr>
			<tr>
				<th width="120">핸드폰번호</th>
				<td>
					<input type="text" name="hp" placeholder="핸드폰번호입력" required="required">
				</td>
			</tr>
			<tr>
				<th width="120">운전면허여부</th>
				<td>
					<input type="checkbox" name="lic" value="있음">
					있을경우 체크
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" id="b" class="btn btn-success" value="가입">가입</button>
					<button type="button" id="b" class="btn btn-info" value="목록" onclick="location.href='teamList.jsp'">목록</button>
				</td>
			</tr>

		</table>
	</form>
</body>
</html>