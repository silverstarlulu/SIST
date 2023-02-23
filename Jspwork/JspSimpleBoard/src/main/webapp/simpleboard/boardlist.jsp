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
/* List<SimpleDto> list = dao.getAllBoardDatas(); */

int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 5; //한 페이지당 보여질 글 개수
int perBlock = 5; //한 블럭당 보여지는 페이지 개수
int currentPage; //현재페이지

int no;

totalCount = dao.getTotalCount();

//현재 페이지 번호 읽기(null일때는 1페이지로 설정)
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//총 페이지 개수
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//각 블럭의 시작페이지 -> 현재페이지가 3 -> s:1, e:5 / 6 -> s:6, e:10
startPage = (currentPage - 1) / perBlock * perBlock + 1;
endPage = startPage + perBlock - 1;

//총 페이지가 8이면 (6~10 -> end페이지를 8로 수정)
if (endPage > totalPage)
	endPage = totalPage;

//각페이지에서 불러올 시작번호
start = (currentPage - 1) * perPage;

//메서드 불러오기
List<SimpleDto> list = dao.getList(start, perPage);

no = totalCount - (currentPage - 1) * perPage;
%>
<body>
	<div class="alert alert-warning" style="width: 800px">
		<%-- <b>총<%=list.size()%>개의 글이 있습니다!
		</b> --%>
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

		/* for (int i = 0; i < list.size(); i++) { */
		/* //1번열에 출력할 번호
		no = list.size() - i;
		//dto
		SimpleDto dto = list.get(i); */

		for (SimpleDto dto : list) {
		%>
		<tr>
			<%-- <td align="center"><%=no%></td> --%>
			<td align="center"><%=no--%></td>
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

	<!-- 페이징 처리 -->
	<div style="width: 500px; text-align: center;" class="container">
		<ul class="pagination">
			<%
			//이전
			if (startPage > 1) {
			%>
			<li><a href="boardlist.jsp?currentPage=<%=startPage - 1%>">이전</a></li>
			<%
			}
			for (int pp = startPage; pp <= endPage; pp++) {
			if (pp == currentPage) {
			%>
			<li class="active"><a href="boardlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			} else {
			%>

			<li><a href="boardlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			}
			}
			//다음
			if (endPage < totalPage) {
			%>
			<li><a href="boardlist.jsp?currentPage=<%=endPage + 1%>">다음</a></li>
			<%
			}
			%>
		</ul>
	</div>


</body>
</html>