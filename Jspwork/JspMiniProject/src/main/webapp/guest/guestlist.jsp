<%@page import="data.dao.MemberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GuestDao"%>
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
span.wday {
	font-size: 10pt;
	color: gray;
}

a {
	cursor: pointer;
}

.aa {
	float: right;
}
</style>
</head>
<%
//로그인 상태 확인 후 입력폼 나타내기
String loginok = (String) session.getAttribute("loginok");

//아이디
String myid = (String) session.getAttribute("myid");

GuestDao dao = new GuestDao();

int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 5; //한 페이지당 보여질 글 개수
int perBlock = 3; //한 블럭당 보여지는 페이지 개수
int currentPage; //현재페이지

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
List<GuestDto> list = dao.getList(start, perPage);
SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm");
%>
<body>
	<%
	if (loginok != null) {
	%>
	<jsp:include page="addform.jsp" />
	<hr align="left" width="700">
	<%
	}
	%>
	<div class="alert alert-info" style="width: 700px">
		총&nbsp;<b><%=totalCount%>개</b>의 방명록 글이 있습니다.
	</div>
	<div>
		<%
		MemberDao mdao = new MemberDao();
		for (GuestDto dto : list) {
			//이름얻기
			String name = mdao.getName(dto.getMyid());
		%>
		<table class="table table-striped" style="width: 700px">
			<tr>
				<td>
					<span class="glyphicon glyphicon-user"></span> <b> <%=name%></b>(<%=dto.getMyid()%>) <span class="wday"><%=sdf.format(dto.getWriteday())%></span>
					<%
					//로그인한 아이디와 글을 쓴 아이디가 같을 경우 수정삭제 버튼
					if (loginok != null && dto.getMyid().equals(myid)) {
					%>
					<span class="aa">|&nbsp;<a style="color: black;" href="guest/delete.jsp?num=<%=dto.getNum() %>&currentPage=<%=currentPage %>">삭제</a></span>
					<span class="aa"><a style="color: black;">수정</a>&nbsp;</span>
					<%
					}
					%>
				</td>
			</tr>

			<tr>
				<!-- 이미지가 null이 아닌 경우만 출력 -->
				<td>
				<%
				if (dto.getPhotoname() != null) {
				%>
				<a href="save/<%=dto.getPhotoname()%>" target="_blank"> <img src="save/<%=dto.getPhotoname()%>" width="100px" align="left">
				</a>
				<%
				}
				%>
				<%=dto.getContent().replace("\n", "<br>")%>
				</td>
			</tr>
		</table>
		<%
		}
		%>
	</div>
	
	<!-- 페이징 처리 -->
	<div style="width: 500px; text-align: center;" class="container">
		<ul class="pagination">
			<%
			//이전
			if (startPage > 1) {
			%>
			<li><a href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=startPage - 1%>">이전</a></li>
			<%
			}
			for (int pp = startPage; pp <= endPage; pp++) {
			if (pp == currentPage) {
			%>
			<li class="active"><a href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			} else {
			%>

			<li><a href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			}
			}
			//다음
			if (endPage < totalPage) {
			%>
			<li><a href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=endPage + 1%>">다음</a></li>
			<%
			}
			%>
		</ul>
	</div>
</body>
</html>