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
	<h4>제이쿼리의 AJAX함수를 이용해서 student(json) DB 읽어오기</h4>
	<button type="button" class="btn btn-success" id="btn1">studentToJson 읽기</button>

	<h4>제이쿼리의 AJAX함수를 이용해서 food(xml) DB 읽어오기</h4>
	<button type="button" class="btn btn-success" id="btn2">foodToXml 읽기</button>

	<br>
	<br>

	<div id="show"></div>
	<script>
		$("#btn1").click(function() {
			$.ajax({
				type:"get",
				url:"studentToJson.jsp",
				dataType:"json",
				success:function(res){
					var s="";
					
					$.each(res,function(i,ele){
						s+="<div class='alert alert-warning' style='width:400px'>";
						s+="Index : "+i+"<br>";
						s+="Num : "+ele.num+"<br>";
						s+="StuName : "+ele.stuname+"<br>";
						s+="<img src='"+ele.stuphoto+"' width='100'><br>";
						s+="Java : "+ele.java+"점<br>";
						s+="Ajax : "+ele.ajax+"점<br>";
						s+="</div>";
					})
					
					$("#show").html(s);
				}
			})
		})
		
		$("#btn2").click(function() {
			$.ajax({
				type:"get",
				url:"foodToXml.jsp",
				dataType:"xml",
				success:function(res){
					var s="";
					
					$(res).find("food").each(function(i,ele){
						var n=$(ele);
						s+="<div class='alert alert-info' style='width:400px;'>";
						s+="Index : "+i+"<br>";
						s+="Num : "+n.attr("num")+"<br>";
						s+="FoodName : "+n.find("foodname").text()+"<br>";
						s+="<img src='"+n.find("foodphoto").text()+"' width='100'><br>";
						s+="Price : "+n.find("price").text()+"<br>";
						s+="Cnt : "+n.find("cnt").text();
						s+="</div>";
					})
					$("#show").html(s);
				}
			})
		})
	</script>
</body>
</html>