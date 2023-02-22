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
th {
	text-align: center
}
</style>
</head>
<%
SimpleDao dao = new SimpleDao();
List<SimpleDto> list = dao.getAllBoardDatas();
%>
<body>
	<div class="alert alert-warning" style="width: 800px">
		<b>총<%=list.size()%>개의 글이 있습니다!
		</b>
	</div>
	<br>
	<table class="table table-hover" style="width: 800px">
		<caption>
			<b>게시판형 목록보기</b>
			<button type="button" class="btn btn-info" onclick="location.href='insertform.jsp'">글쓰기</button>
			<button type="button" class="btn btn-info" onclick="location.href='boardlist2.jsp'">이미지형 목록</button>
			<button type="button" class="btn btn-info" onclick="location.href='/JspSimpleBoard/index.jsp'">메인페이지</button>
		</caption>
		<tr style="background: #ffc0cb">
			<th width="70">번호</th>
			<th width="400">제목</th>
			<th width="120">작성자</th>
			<th width="170">작성일</th>
			<th width="70">조회</th>
		</tr>
		<%
		//날짜 형식 지정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		for (int i = 0; i < list.size(); i++) {
			//1번열에 출력할 번호
			int no = list.size() - i;
			//dto
			SimpleDto dto = list.get(i);
		%>
		<tr>
			<td align="center"><%=no%></td>

			<td>
				<a href="content.jsp?num=<%=dto.getNum()%>"> <img src="../upload/<%=dto.getImgname()%>" style="width: 30px; height: 30px">&nbsp;<%=dto.getSubject()%>
				</a>
			</td>

			<td align="center"><%=dto.getWriter()%></td>
			<td align="center"><%=sdf.format(dto.getWriteday())%></td>
			<td align="center"><%=dto.getReadcount()%></td>

		</tr>
		<%
		}
		%>
	</table>

</body>
</html>