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
div.loginform {
	width: 500px;
	margin: 0 auto;
	margin-top: 100px;
}

.btn {
	margin-bottom: 10px
}
</style>
</head>
<%
String ssId = (String) session.getAttribute("idok");
String saveResult = (String) session.getAttribute("saveok");

boolean save = true;
if (saveResult == null || saveResult.equals("none")) {
	ssId = ""; //아이디저장을 체크 x -> 아이디가 남아있지 않음
	save = false;
}
%>
<body>
	<div class="loginform">
		<h3>
			<b>회원로그인</b>
		</h3>
		<form action="loginproc.jsp" method="post">
			<input type="text" name="id" style="width: 400px;" class="form-control input-lg" placeholder="아이디 입력" required="required" value="<%=ssId%>">
			<br>
			<input type="password" name="pass" style="width: 400px;" class="form-control input-lg" placeholder="비밀번호 입력" required="required">
			<br>
			<button type="submit" class="btn btn-success btn-lg" style="width: 400px; height: 40px">로그인</button>
			<br>
			<input type="checkbox" name="savechk" <%=save ? "checked" : ""%>>
			아이디 저장
		</form>
	</div>
</body>
</html>