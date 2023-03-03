<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
th {
	background-color: #D3E5DF;
}

table {
	margin-left: 50px;
	margin-top: 20px;
}
</style>
</head>
<%
MemberDao dao = new MemberDao();
List<MemberDto> list = dao.getAllMembers();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

String loginok = (String) session.getAttribute("loginok");
String myid = (String) session.getAttribute("myid");
%>
<body>
	<table class="table table-bordered" style="width: 500px">
		<caption>
			<b>회원정보</b>
		</caption>
		<%
		for (MemberDto dto : list) {
		%>
		<%
		if (loginok != null && dto.getId().equals(myid)) {
		%>
		<tr>
			<th style="text-align: center" width="100">아이디</th>
			<td><%=dto.getId()%></td>
		</tr>
		<tr>
			<th style="text-align: center" width="100">이름</th>
			<td><%=dto.getName()%></td>
		</tr>
		<tr>
			<th style="text-align: center" width="150">휴대폰번호</th>
			<td><%=dto.getHp()%></td>
		</tr>
		<tr>
			<th style="text-align: center" width="150">주소</th>
			<td><%=dto.getAddr()%></td>
		</tr>
		<tr>
			<th style="text-align: center" width="150">이메일</th>
			<td><%=dto.getEmail()%></td>
		</tr>
		<tr>
			<th style="text-align: center" width="150">가입날짜</th>
			<td><%=sdf.format(dto.getGaipday())%></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<button type="button" class="btn btn-warning btn-sm" onclick="#">회원수정</button>
				<button type="button" class="btn btn-danger btn-sm" onclick="delfunc(<%=dto.getNum()%>)">회원탈퇴</button>
			</td>
		</tr>
		<%
		}
		%>
		<%
		}
		%>
	</table>
</body>
</html>