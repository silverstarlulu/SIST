<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.simpleboard.SimpleDto"%>
<%@page import="java.util.List"%>
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
<style>
body{
font-family: 'Poor Story', cursive;
}
img {
	border: 1px solid gray
}

a {
	color: black;
}
</style>
</head>
<%
SimpleDao dao = new SimpleDao();
List<SimpleDto> list = dao.getAllBoardDatas();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<div class="alert alert-warning" style="width: 800px">
		<b>총<%=list.size()%>개의 글이 있습니다!
		</b>
	</div>
	<table class="table table-hover" style="width: 800px">
		<caption>
			<b>이미지형 목록보기</b>

			<button type="button" class="btn btn-info" onclick="location.href='insertform.jsp'">글쓰기</button>
			<button type="button" class="btn btn-info" onclick="location.href='boardlist.jsp'">게시판형 목록</button>
			<button type="button" class="btn btn-info" onclick="location.href='/JspSimpleBoard/index.jsp'">메인페이지</button>
		</caption>
		<tr>
			<%
			for (int i = 0; i < list.size(); i++) {
				int no = list.size() - i;
				SimpleDto dto = list.get(i);
			%>
			<td>
				<a href="content.jsp?num=<%=dto.getNum()%>"><img src="../upload/<%=dto.getImgname()%>" style="width: 200px; height: 200px; margin: 5px'"><br>
					<h3><b><%=dto.getSubject()%></b></h3></a> <span style="color: gray"><%=dto.getWriter()%></span> <br> <span style="color: gray"><%=sdf.format(dto.getWriteday())%></span> <span style="color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회 <%=dto.getReadcount()%></span> <br>
			</td>
			<%
			if ((i + 1) % 4 == 0) {
			%>
				<tr></tr>
			<%
			}
			}
			%>
		
	</table>

</body>
</html>