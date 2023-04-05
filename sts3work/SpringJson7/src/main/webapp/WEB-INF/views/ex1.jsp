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
	<h3 class="alert alert-info">Ex1 예제</h3>
	<br>
	<button type="button" id="btn1" class="btn btn-success">list1
		JSON 데이터 출력</button>
	<div id="out1"></div>
	<script>
	$("#btn1").click(function(){
		$.ajax({
			type:"get",
			dataType:"json",
			url:"list1",
			success:function(res){
				$("#out1").empty();
				
				$("#out1").append("이름 : "+res.name+"<br>");
				$("#out1").append("전화번호 : "+res.hp+"<br>");
				$("#out1").append("주소 : "+res.addr+"<br>");
			}
		})
	})
	</script>
</body>
</html>