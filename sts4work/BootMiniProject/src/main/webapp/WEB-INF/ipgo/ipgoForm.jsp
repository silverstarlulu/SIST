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
	<form action="insert" method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>상품정보 입력</b>
			</caption>
			<tr>
				<th style="background-color: #7C96AB; color: #FEFAE0">상품명</th>
				<td><input type="text" name="sangpum" class="form-control"
					style="width: 300px" required="required"></td>
			</tr>
			<tr>
				<th style="background-color: #7C96AB; color: #FEFAE0">단가</th>
				<td><input type="text" name="price" class="form-control"
					style="width: 300px" required="required"></td>
			</tr>
			<tr>
				<th style="background-color: #7C96AB; color: #FEFAE0">사진</th>
				<td><input type="file" name="upload" class="form-control"
					onchange="readURL(this)" style="width: 300px" multiple="multiple">
					<img alt="" src="" id="preview" style="max-width: 100px;'"></td>
				<script>
					function readURL(input) {
						if (input.files && input.files[0]) {
							var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
							reader.onload = function(e) {
								// 파일 읽어들이기를 성공했을 때 호출되는 이벤트 핸들러
								$("#preview").attr("src", e.target.result);
								//이미지 Tag의 src 속성에 읽어들인 File 내용을 지정
								// 아래 코드에서 읽어들인 dataURL 형식
							}
							reader.readAsDataURL(input.files[0]);
						}
					}
				</script>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-info btn-sm" style="margin-right: 10px">상품입고</button>
					<button type="button" class="btn btn-success btn-sm"
						onclick="location.href='list'">상품목록</button></td>
			</tr>
		</table>

	</form>

</body>
</html>