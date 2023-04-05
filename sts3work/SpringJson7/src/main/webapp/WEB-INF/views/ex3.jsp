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
	<h3 class="alert alert-success">산리오 캐릭터이름을 입력 후 엔터를 눌러주세요.</h3>
	<br>
	<input class="form-control" type="text"
		style="width: 200px; margin-left: 10px" id="name">
	<br>
	<br>
	<div
		style="border: 1px solid gray; width: 200px; height: 200px; margin-left: 10px" id="photo"></div>

	<script>
    $("#name").keydown(function(e){
      
        if(e.keyCode == 13){
            //alert($(this).val());
            
            
            $.ajax({
            	type:"get",
            	dataType:"json",
            	url:"list2",
            	success:function(res){
            		$.each(res,function(i,ele){
            			if(ele.name==$("#name").val()){
            				$("#photo").html("<img src='upload/"+ele.photo+"' width='230'>");
            			}else{
            				$("#photo").html("해당 캐릭터가 없습니다.").css("color","red");
            			}
            			
            		})
	
            	}
            })
            
        }
     })

 </script>

</body>
</html>
