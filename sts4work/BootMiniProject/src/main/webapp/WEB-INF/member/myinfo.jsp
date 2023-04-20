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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}
table {
	font-size: 1.2em;
}
</style>
</head>
<body>
	<div style="margin: 100px">
		<table class="table table-bordered">
			<c:forEach var="dto" items="${list }">
			<c:if test="${sessionScope.loginOk!=null && sessionScope.loginUser==dto.id }">
				<tr>
					<td style="width: 250px" align="center" rowspan="5"><img
						src="../photo/${dto.photo }" width="220" border="1"><br>
						<input type="file" id="newPhoto" style="display: none;"
						num=${dto.num }>
						<button type="button" class="btn btn-info" id="btnNewPhoto">사진수정</button></td>
					<td style="width: 300px">회원명: ${dto.name }</td>
					<td rowspan="5" align="center" style="width: 200px; vertical-align: middle"><button
							type="button" class="btn btn-info" onclick="location.href=''">수정</button>
						<button type="button" num="${dto.num }" class="btn btn-danger" id="btnDelete">삭제</button></td>
				</tr>
				<tr>
					<td style="width: 300px">아이디: ${dto.id }</td>
				</tr>
				<tr>
					<td style="width: 300px">이메일: ${dto.email }</td>
				</tr>
				<tr>
					<td style="width: 300px">핸드폰: ${dto.hp }</td>
				</tr>
				<tr>
					<td style="width: 300px">주소: ${dto.addr }</td>
				</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
	
	<script>
	$("#btnDelete").click(function(){
		var num=$(this).attr("num");
		//alert(num);
		
		$.ajax({
			type:"get",
			data:{"num":num},
			dataType:"html",
			url:"/member/delete",
			success:function(){
				location.href="/";
			}
		})
	})
	</script>
</body>
</html>