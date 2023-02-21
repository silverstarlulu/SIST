<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#blah").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<style type="text/css">
#blah {
	position: absolute;
	top: 100px;
	left: 600px
}
</style>
</head>
<body>
	<form action="insertaction.jsp" method="post" enctype="multipart/form-data">
		<table class="table table-hover" style="width: 500px">
			<tr>
				<th style="width: 100px" bgcolor="lightgray">작성자</th>
				<td>
					<input type="text" name="writer" style="width: 200px" class="form-control" placeholder="writer" autofocus="autofocus" required="required">
				</td>
			</tr>
			<tr>
				<th style="width: 100px" bgcolor="lightgray">제목</th>
				<td>
					<input type="text" name="subject" style="width: 300px" class="form-control" placeholder="subject" required="required">
				</td>
			</tr>
			<tr>
				<th style="width: 100px" bgcolor="lightgray">사진업로드</th>
				<td>
					<input type="file" name="photo" style="width: 300px" class="form-control" required="required" onchange="readURL(this)">
				</td>
			</tr>
			<tr>
				<th style="width: 100px" bgcolor="lightgray">비밀번호</th>
				<td>
					<input type="password" name="pass" style="width: 200px" class="form-control" placeholder="password (
4 digit number)" pattern="[0-9]{4}" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea style="width: 500px; height: 200px" class="form-control" name="content" required="required"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-warning">저장하기</button>
					<button type="button" class="btn btn-info" onclick="location.href='boardlist.jsp'">목록으로</button>
				</td>
			</tr>
		</table>
	</form>

	<img src="" style="max-width: 300px" id="blah">
</body>
</html>