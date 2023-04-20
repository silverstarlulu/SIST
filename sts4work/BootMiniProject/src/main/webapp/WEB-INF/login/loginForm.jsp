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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}
input{
	font-size: 1.7em;
}
</style>
</head>
<body>
	<div align="center">
		<form action="loginProcess" method="post">
			<table class="table table-bordered" style="width: 400px; height: 200px;">
				<caption>
					<b style="font-size: 1.5em">USER LOGIN</b>
				</caption>
				<tr>
					<td style="vertical-align: middle;"><input type="text" name="id" placeholder="Input ID" style="height: 45px"
						class="form-control" required="required" autofocus="autofocus" value="${sessionScope.saveOk==null?"":sessionScope.loginUser }"></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;"><input type="password" name="pass" placeholder="Input PW"  style="height: 45px"
						class="form-control" required="required"></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="cbSave" ${sessionScope.saveOk==null?"":"checked" }>&nbsp;save
						ID&nbsp;&nbsp;
						<button style="float: right" type="submit" class="btn btn-success">LOGIN</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>