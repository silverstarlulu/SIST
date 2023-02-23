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
	<h2>제이쿼리의 AJAX함수를 이용해서 person(xml) DB 읽어오기</h2>
	<button type="button" class="btn btn-success" id="btn1">persontoxml 읽기</button>

	<h2>제이쿼리의 AJAX함수를 이용해서 info(json) DB 읽어오기</h2>
	<button type="button" class="btn btn-success" id="btn2">infotojson 읽기</button>

	<br>
	<br>

	<div id="show"></div>

	<script type="text/javascript">
	$("#btn1").click(function() {
		$.ajax({
			type:"get",
			url:"persontoxml.jsp",
			dataType:"xml",
			success:function(res){
				
				var s="";
				
				$(res).find("person").each(function(i,ele){
					var n=$(ele);
					
					s+="<div class='alert alert-danger' style='width:400px;'>";
					s+="No : "+n.attr("num")+", ";
					s+="Name : "+n.find("name").text()+"<br>";
					s+="Age : "+n.find("age").text()+"<br>";
					s+="hp : "+n.find("hp").text();
					s+="</div>";
				})
				
				$("#show").html(s);
			}
		})
	})
	
	$("#btn2").click(function() {
		$.ajax({
			type:"get",
			url:"infotojson.jsp",
			dataType:"json",
			success:function(res){
				var s="";
				
				$.each(res,function(i,ele){
					s+="<div class='alert alert-info' style='width:400px;'>";
					s+="Index : "+i+"<br>";
					s+="Num : "+ ele.num+"<br>";
					s+="Name : "+ ele.name+"<br>";
					s+="Hp : "+ ele.hp+"<br>";
					s+="Age : "+ ele.age+"<br>";
					s+="<img src='"+ele.photo+"' width='100'>";
					s+="</div><br>"
				})
				
				$("#show").html(s);
			}
		})
	})
	</script>
</body>
</html>