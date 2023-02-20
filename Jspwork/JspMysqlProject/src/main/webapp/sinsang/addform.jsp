<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
	function goFocus(hp) {
		if (hp.value.length == 4)
			frm.hp3.focus();
	}
</script>
</head>
<body>
	<form action="addaction.jsp" method="post" name="frm">
		<table class="table table-bordered" style="width: 350px">
			<caption>
				<b>개인신상정보</b>
			</caption>
			<tr>
				<th width="100" bgcolor="lightgray">이름</th>
				<td>
					<input type="text" name="name" placeholder="이름" required="required" size="6">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="lightgray">혈액형</th>
				<td>
					<select name="blood" size="1">
						<option value="A">A형</option>
						<option value="B">B형</option>
						<option value="O">O형</option>
						<option value="AB">AB형</option>
					</select>
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="lightgray">핸드폰</th>
				<td>
					<select name="hp1" size="1">
						<option value="010">010</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="041">041</option>
					</select>
					<b>-</b>
					<input type="text" name="hp2" size="3" required="required" onkeyup="goFocus(this)">
					<b>-</b>
					<input type="text" name="hp3" size="3" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="lightgray">생년월일</th>
				<td>
					<input type="date" name="birth" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="db저장" class="btn btn-success">
					<input type="button" value="목록" class="btn btn-info"onclick="location.href='sslist.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>