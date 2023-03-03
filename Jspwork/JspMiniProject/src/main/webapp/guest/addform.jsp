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
</style>
<script>
	$(function() {
		$("span.camera").click(function() {
			$("#photo").trigger("click"); //이벤트 강제호출
		})
	})

	//이미지 미리보기
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#showimg").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
	<div>
		<!-- 이미지 미리보기 할 위치 -->
		<img id="showimg" style="position: absolute; left: 700px; top: 80px; max-width: 200px;">
		<form action="guest/addaction.jsp;" method="post" enctype="multipart/form-data">
			<table style="width: 600px">
				<caption>
					<b>방명록 등록</b> <span class="glyphicon glyphicon-camera camera"></span>
					<input type="file" name="photo" id="photo" style="visibility: hidden" onchange="readURL(this)">
				</caption>

				<tr height="100">
					<td width="500">
						<textarea style="width: 480px; height: 100px;" class="form-control" name="content" required="required"></textarea>
					</td>
					<td>
						<button type="submit" class="btn btn-success" style="width: 120px; height:100px; margin-left: 20px;">등록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>