<%@page import="login.model.loginDao"%>
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
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String save = request.getParameter("savechk");

	loginDao dao = new loginDao();
	boolean loginResult = dao.isLogin(id, pass);

	if (loginResult) {
		//로그인 중인지?
		session.setAttribute("loginok", "ok");

		//아이디와 체크값 저장
		session.setAttribute("idok", id);
		session.setAttribute("saveok", save); //체크 시 on, 체크 x 시 null

		//세션 유지시간
		session.setMaxInactiveInterval(60 * 60 * 2); //2시간 동안 유지

		//로그인메인으로 이동
		response.sendRedirect("loginmain.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("아이디와 비밀번호가 맞지 않습니다.");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>