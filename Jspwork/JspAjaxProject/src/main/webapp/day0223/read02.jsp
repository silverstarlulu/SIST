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
	<h2>제이쿼리의 AJAX함수로 XML 데이터 읽기</h2>
	<button type="button" class="btn btn-success" id="btn1">data2.xml 읽기</button>

	<h2>제이쿼리의 AJAX함수로 JSON 데이터 읽기</h2>
	<button type="button" class="btn btn-success" id="btn2">data2.json 읽기</button>
	<br><br>
	<div id="show"></div>
	
	<script>
 	$("#btn1").click(function () {
		
		$.ajax({
			type:"get",
			url:"data2.xml",
			dataType:"xml",
			success:function(res){
				var s="";
				$(res).find("person").each(function(i, ele){
					var n=$(ele);
					s+="<div class='alert alert-warning' style='width:400px'>"
					s+="No: "+n.attr("no")+", ";
					s+="Name: "+n.find("name").text()+", ";
					s+="Addr: "+n.find("addr").text();
					s+="</div>";
				})
				$("#show").html(s);
			}
		})
	})
	
	
	$("#btn2").click(function () {
		$.ajax({
			type:"get",
			url:"data2.json",
			dataType:"json",
			success:function(res){
				var s="";
				
				//인자로 넘어온 data(res)는 배열타입
				$.each(res,function(i,ele){
					s+="<div class='alert alert-info' style='width: 300px;'>";
					s+="Index: "+i+"<br>";
					s+="Num: "+ele.num+"<br>";
					s+="Name: "+ele.name+"<br>";
					s+="<img src='"+ele.photo+"' width='100'>";
					s+="</div>"
				})
				
				$("#show").html(s);
			}
		})
	})
	</script>
</body>
</html>