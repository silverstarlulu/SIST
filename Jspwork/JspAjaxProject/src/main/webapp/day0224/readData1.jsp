<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
div.box{
float: left;
margin-left: 20px;
border: 2px solid gray;
border-radius: 30px;
}
</style>
<script>
	$(function() {
		$("#btn1").click(function() {
			$.ajax({
				type : "get",
				url : "jsondata1.json",
				dataType : "json",
				success : function(res) {
					var s = "<h4 class='alert alert-danger'>JSON 데이터 출력</h4>";
					
					$.each(res, function(i,ele){
						s+="<div class='alert alert-info box'>";
						s+=(i+1)+"번 학생<br>";
						s+="Name : "+ele.name+"<br>";
						s+="Hobby : ";
						if(ele.hobby==null){
							s+="미기재";
						} else{
							//취미가 배열이므로 each문
							$.each(ele.hobby, function(i,h){
								s+="["+h+"]&nbsp;";
							})
						}
						s+="<br>";
						s+="Age : "+ele.age+"<br>";
						s+="Kor : "+(ele.score.kor==null?"미응시":ele.score.kor+"점")+"<br>";
						s+="Eng : "+(ele.score.eng==null?"미응시":ele.score.eng+"점")+"<br>";
						s+="Mat : "+(ele.score.mat==null?"미응시":ele.score.mat+"점");
						s+="</div>";
					})
					
					$("#show").html(s);
				}
			})
		})

		$("#btn2").click(function() {
			$.ajax({
				type : "get",
				url : "xmldata.xml",
				dataType : "xml",
				success : function(res) {
					var s = "<h4 class='alert alert-warning'>XML 데이터 출력</h4>";

					$(res).find("data").each(function(i, ele) {
						var row = $(ele);
						s+="<div class='alert alert-success box'>";
						s+="아이디 : "+row.attr("id")+"<br>";
						s+="이름 : "+row.attr("name")+"<br>";
						s+="제목 : "+row.find("subject").text()+"<br>";
						var imgname=row.find("photo").text();
						s+="이미지명 : "+imgname+"<br>";
						s+="<img src='"+imgname+"' style='max-height:150px;'>";
						s+="</div>";
					})
					
					$("#show").html(s);
				}
			})
		})
	})
</script>
</head>
<body>
	<button type="button" id="btn1" class="btn btn-info">Json 데이터읽기</button>
	<button type="button" id="btn2" class="btn btn-danger">Xml 데이터읽기</button>
	<hr>
	<div id="show" class="alert alert-default"></div>
</body>
</html>