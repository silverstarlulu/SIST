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
div.box{
width:200px;
height:300px;
float: left;
margin-left :20px;
}
</style>
<script>
	$(function() {
		$("#btn1").click(function() {
			$("#show").html("<img src='../image/연예인사진/10.jpg'>");
		})
		
		$("#btn2").click(function() {
			$("#show").empty();
			
			$.ajax({
				type:"get",
				url:"jshopToJson.jsp",
				dataType:"json",
				success: function(res){
					var s="";
					
					$.each(res,function(i,ele){
						s+="<div class='alert alert-info box'>";
						s+="Num : "+ele.num+"<br>";
						s+="Sangpum : "+ele.sangpum+"<br>";
						s+="Color : "+ele.color+"<br>";
						s+="Price : "+ele.price+"<br><br>";
						s+="<img src='"+ele.imgname+"' style='height:170px'>";
						s+="</div>";
					})
					
					$("#show").html(s);
					
				}
			})
		})
		
		$("#btn3").click(function() {
			$("#show").empty();
			
			$.ajax({
				type:"get",
				url:"sboardToJson.jsp",
				dataType:"json",
				success: function(res){
					var s="<table class='table table-bordered' style='width:800px'>";
					s+="<caption><b>simpleboard 출력하기</b></caption>"
					s+="<tr bgcolor='lightyellow'>";
					s+="<th style='text-align:center'>번호</th><th style='text-align:center'>작성자</th><th style='text-align:center'>제목</th><th style='text-align:center'>이미지</th><th style='text-align:center'>조회수</th>";
					s+="</tr>";
					
					$.each(res,function(i,ele){
						s+="<tr align='center'>";
						s+="<td style='vertical-align:middle'>"+ele.num+"</td>";
						s+="<td style='vertical-align:middle'>"+ele.writer+"</td>";
						s+="<td style='vertical-align:middle'>"+ele.subject+"</td>";
						s+="<td><img src='../upload/"+ele.imgname+"' style='height:50px'></td>";
						s+="<td style='vertical-align:middle'>"+ele.readcount+"</td>";
						s+="</tr>";
					})
					s+="</table>";
					$("#show").html(s);
			}
			
		})
	})
})
</script>
</head>
<body>
	<button type="button" class="btn btn-info" id="btn1">home</button>
	<button type="button" class="btn btn-warning" id="btn2">Jshop</button>
	<button type="button" class="btn btn-success" id="btn3">SimpleBoard</button>
	<hr>
	<div id="show"></div>
</body>
</html>