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
	<h3 class="alert alert-warning">Ex2 예제</h3>
	<br>
	<button type="button" id="btn2" class="btn btn-info">list2
		JSON 배열 데이터 출력</button>
	<div id="out2"></div>

	<script>
		$("#btn2").click(function() {
			$.ajax({
				type : "get",
				dataType : "json",
				url : "list2",
				success : function(res) {
					var s="";

					$.each(res, function(i,ele){
						s+="<figure style='border:1px solid gray; width:300px'><img width='200' src='upload/"+ele.photo+"'>"
						s+="<figcaption style='text-align:center'><b>"+ele.name+"</b></figcaption></figure><br>";
						
						$("#out2").html(s);
					})

				}
			})
		})
	</script>
</body>
</html>