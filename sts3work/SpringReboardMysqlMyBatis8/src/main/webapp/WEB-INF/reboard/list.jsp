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
<script>
$(function(){
	$("#basic_list").click(function(){
		
		$("#basic_list").css("color","red");
		$("#image_list").css("color","black");
		
		//alert("click");
		$.ajax({
			type:"get",
			url:"list1",
			dataType:"json",
			success:function(res){
				var output="";
				output+="<table class='table table-bordered' style='width:800px'><tr><th>제목</th><th>작성자</th><th>내용</th></tr>";
				$.each(res,function(i,ele){
					output+="<tr><td><b>"+ele.subject+"</b></td>";
					output+="<td>"+ele.writer+"</td>";
					output+="<td>"+ele.content;
					
					if(ele.photo!="no"){
						output+="<img src='../photo/"+ele.photo+"' width='50' style='float:right'>";
					}
					
					output+="</td></tr>";
					
				})
				output+="</table>";
				
				$("#output").html(output);
				
			}
		})
	})
	
	
	$("#image_list").click(function(){
		
		$("#basic_list").css("color","black");
		$("#image_list").css("color","red");
		
		//alert("click");
		$.ajax({
			type:"get",
			url:"list1",
			dataType:"json",
			success:function(res){
				$("#output").empty();
				$.each(res,function(i,ele){
					if(ele.photo!="no"){
						$("#output").append("<img src='../photo/"+ele.photo+"' width='200'><br>");
					}
					$("#output").append("<h4>"+ele.subject+"</h4><br>");
					
				})
				
				
			}
		})
	})
})
</script>
</head>
<body>
	<div>
		<span style="font-size: 3em; margin:10px; cursor: pointer;" class="glyphicon glyphicon-list" id="basic_list"></span>
		<span style="font-size: 3em; margin:10px; cursor: pointer;" class="glyphicon glyphicon-th-large" id="image_list"></span>
	</div>
	<div id="output" style="margin: 20px;"></div>
</body>
</html>