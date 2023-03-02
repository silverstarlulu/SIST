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
</style>
</head>
<%
MemberDao dao = new MemberDao();
List<MemberDto> list = dao.getAllMembers();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
int no = 1;
%>
<body>
	<table class="table table-hover">
		<caption>
			<b>전체 회원목록</b>
		</caption>
		<tr>
			<th style="text-align: center" width="60">번호</th>
			<th style="text-align: center" width="100">아이디</th>
			<th style="text-align: center" width="100">이름</th>
			<th style="text-align: center" width="150">휴대폰번호</th>
			<th style="text-align: center" width="150">주소</th>
			<th style="text-align: center" width="150">이메일</th>
			<th style="text-align: center" width="150">가입날짜</th>
			<th style="text-align: center" width="170">편집</th>
		</tr>
		<%
		for (MemberDto dto : list) {
		%>
		<tr align="center">
			<td><%=no++%></td>
			<td><%=dto.getId()%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getHp()%></td>
			<td><%=dto.getAddr()%></td>
			<td><%=dto.getEmail()%></td>
			<td><%=sdf.format(dto.getGaipday())%></td>
			<td>
				<button type="button" class="btn btn-danger btn-xs" 
				onclick="location.href='index.jsp?main=member/memberdelete.jsp?num=<%=dto.getNum()%>'">회원 강제탈퇴</button>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>