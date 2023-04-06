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
<input type="text" id="search" class="form-control" style="width: 130px">
<h2 id="fname"></h2>
<img src="" id="photo">

<script>
$("#search").keyup(function(e){
    
    if(e.keyCode == 13){
        
        var name=$(this).val();
        
        $.ajax({
        	type:"get",
        	dataType:"json",
        	url:"list3",
        	data:{"name":name},
        	success:function(res){
        			$("#fname").text(res.name);
        			$("#photo").attr("src","upload/"+res.photo);
        			$("#search").val('');

        	}
        })
        
    }
 })

</script>
</body>
</html>