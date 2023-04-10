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
 <div style="margin: 100px">
 	<form action="updatePass" method="post">
 		<input type="hidden" name="num" value="${num }">
 		<input type="hidden" name="currentPage" value="${currentPage }">
 	
 		<div class="alert alert-info" style="font-size: 1.3em; width: 380px">
 			<b>비밀번호를 입력해주세요</b>
 		</div>
 		
 		<div class="form-inline">
 			<input type="password" name="pass" class="form-control" style="width: 130x" required="required">
 			<button type="submit" class="btn btn-info btn-sm" style="margin-left: 30px">수정하기</button>
 			<button type="button" class="btn btn-success btn-sm" onclick="history.back()">이전으로</button>
 		</div> 
 	</form>
 </div>
</body>
</html>