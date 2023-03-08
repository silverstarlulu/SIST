<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="menu/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="menu/css/menu.css">

<script type="text/javascript" src="menu/js/jquery.js"></script>
<script type="text/javascript" src="menu/js/function.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
a:link, a:visited, a:hover, a:active {
	color: black;
}

a:hover {
	font-weight: 600;
}
</style>
</head>
<%
//프로젝트 경로구하기
String root = request.getContextPath();

//아이디
String myid = (String) session.getAttribute("myid");
//로그인상태
String loginok = (String) session.getAttribute("loginok");
%>
<body>
	<%-- <a href="<%=root%>/index.jsp">메인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=login/loginmain.jsp">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=member/addform.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=member/memberlist.jsp">회원목록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=board/boardlist.jsp">Q&A게시판</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">스마트게시판</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">상품등록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>

	<div id="wrap">
		<header>
			<div class="inner relative">
				<a class="logo" href="#"></a>
				<nav id="navigation">
					<ul id="main-menu">
						<li class="current-menu-item"><a href="<%=root%>/index.jsp">Home</a></li>
						<li class="parent"><a href="http://www.freshdesignweb.com/responsive-drop-down-menu-jquery-css3-using-icon-symbol.html">회원관리</a>
							<ul class="sub-menu">
								<li><a href="<%=root%>/index.jsp?main=member/addform.jsp">회원가입</a></li>
								<%
								if (loginok != null && !myid.equals("admin")) {
								%>
								<li><a href="index.jsp?main=member/myinfo.jsp">회원정보</a></li>
								<%
								}
								%>
								<%
								if (loginok != null && myid.equals("admin")) {
								%>
								<li><a href="<%=root%>/index.jsp?main=member/memberlist.jsp">회원목록</a></li>
								<%
								}
								%>
							</ul></li>
						<li class="parent"><a href="#">게시판</a>
							<ul class="sub-menu">
								<li><a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a></li>
								<li><a href="#">Q&A</a></li>
								<li><a href="<%=root%>/index.jsp?main=board/boardlist.jsp">스마트게시판</a></li>
							</ul></li>
						<li class="parent"><a href="#">SHOP</a>
							<ul class="sub-menu">
								<%
								if (loginok != null && myid.equals("admin")) {
								%>
								<li><a href="<%=root%>/index.jsp?main=shop/addform.jsp">상품등록</a></li>
								<%
								}
								%>
								<li><a href="<%=root%>/index.jsp?main=shop/shoplist.jsp">상품목록</a></li>
							</ul></li>
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
		</header>
	</div>
</body>
</html>