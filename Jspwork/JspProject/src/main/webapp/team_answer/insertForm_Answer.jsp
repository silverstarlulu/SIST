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
	<form action="insertAction_Answer.jsp" method="post">
		<table class="table table-bordered" style="width: 500px; margin: 20px">
			<caption>팀회원 정보추가</caption>
			<tr>
				<th width="120">이름</th>
				<td>
					<input type="text" name="iname" placeholder="이름입력" required="required">
				</td>
			</tr>
			<tr>
				<th width="120">운전면허여부</th>
				<td>
					<input type="checkbox" name="driver">
					있음
				</td>
			</tr>
			<tr>
				<th width="120">핸드폰번호</th>
				<td>
					<input type="text" name="hp" placeholder="핸드폰번호입력" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">저장</button>
					<button type="button" class="btn btn-info" onclick="location.href='teamList_Answer.jsp'">목록</button>
				</td>
			</tr>

		</table>
	</form>
</body>
</html>