<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.simpleboard.SimpleDto"%>
<%@page import="model.simpleboard.SimpleDao"%>
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
<%
String num = request.getParameter("num");

SimpleDao dao = new SimpleDao();
SimpleDto dto = dao.getData(num);
dao.updateReadCount(num);

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<style>
body {
	margin: 10px;
	font-size: 2em;
}
</style>
<body>

	<table class="table table-bordered" style="width: 650px">
		<tr>
			<td style="width: 500px">
				<h2><%=dto.getSubject()%></h2>
				<span style="color: gray; font-size: 9pt"><b><%=dto.getWriter()%></b></span><br> <span style="color: gray; font-size: 9pt"><%=sdf.format(dto.getWriteday())%></span>&nbsp;&nbsp;&nbsp; 조회:
				<%=dto.getReadcount()%>
			</td>
			<tr>
			<td colspan="2">
				<%=dto.getContent().replace("\n", "<br>")%>
			<br>
			<br>
			<br>
			<br>
			<a href="../upload/<%=dto.getImgname()%>"><img src="../upload/<%=dto.getImgname()%>" style="max-width: 300px"></a>
			</td>
		</tr>
	
	</table>
	<div style="margin-left: 400px">
		<button type="button" class="btn btn-info" onclick="location.href='insertform.jsp'">글쓰기</button>
		<button type="button" class="btn btn-warning" onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">수정</button>
		<button type="button" class="btn btn-info" onclick="location.href='boardlist.jsp'">목록</button>
		<button type="button" class="btn btn-danger" onclick="location.href='deleteform.jsp?num=<%=dto.getNum()%>'">삭제</button>
	</div>
</body>
</html>