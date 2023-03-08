<%@page import="data.dto.SmartAnswerDto"%>
<%@page import="data.dao.SmartAnswerDao"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
<%@page import="data.dto.AnswerDto"%>
<%@page import="data.dao.AnswerDao"%>
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
a:link, a:visited {
	text-decoration: none;
	color: black;
}
</style>
<script>
	$(function() {
		$(".alldelcheck").click(function() {
			var chk = $(this).is(":checked");
			$(".alldel").prop("checked", chk);
		})

		$("#btndel").click(function() {
			//체크된 길이
			var len = $(".alldel:checked").length;
			if (len == 0)
				alert("삭제할 항목을 선택하세요.");
			else {
				var a = confirm(len + "개의 글을 삭제하시겠습니까?");
				//체크된 곳의 value 값(num) 얻기
				var n = "";
				$(".alldel:checked").each(function(i) {
					n += $(this).val() + ",";
				})

				//마지막 컴마값 제외하기
				n = n.substring(0, n.length - 1);

				//삭제파일로 전송
				location.href = "board/alldelete.jsp?nums=" + n;
			}
		})
	})
</script>
</head>
<%
SmartDao dao = new SmartDao();

int totalCount; //총 개수
int totalPage; //총 페이지수
int startPage; //각 블럭(1,2,3..)의 시작페이지
int endPage; //각 블럭의 마지막 페이지
int start; //각 페이지의 시작번호
int perPage = 5; //한 페이지당 보여질 글 개수
int perBlock = 3; //한 블럭당 보여지는 페이지 개수
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
List<SmartDto> list = dao.getList(start, perPage);
no = totalCount - (currentPage - 1) * perPage;
SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm");

//댓글관한 dao
SmartAnswerDao a_dao = new SmartAnswerDao();
for (SmartDto dto : list) {
	int a_count = a_dao.getAllSmartAnswers(dto.getNum()).size();
	dto.setAnswercount(a_count);
}
%>
<body>
	<div class="alert alert-info" style="width: 700px">
		총&nbsp;<b><%=totalCount%>개</b>의 스마트게시판 글이 있습니다.
	</div>
	<div>
		<table class="table table-bordered" style="width: 700px">
			<caption>
				<b>스마트 게시판 목록</b>
			</caption>
			<tr>
				<th style="text-align: center" width="80">번호</th>
				<th style="text-align: center" width="400">제목</th>
				<th style="text-align: center" width="120">작성자</th>
				<th style="text-align: center" width="150">작성일</th>
				<th style="text-align: center" width="60">조회</th>
			</tr>

			<%
			if (totalCount == 0) {
			%>
			<tr>
				<td colspan="5" align="center">
					<h3>등록된 게시글이 없습니다.</h3>
				</td>
			</tr>
			<%
			} else {
			for (SmartDto dto : list) {
			%>
			<tr>
				<td align="center">
					<%=no--%>
					&nbsp;
					<input type="checkbox" class="alldel" value="<%=dto.getNum()%>">
				</td>

				<td>
					<a href="index.jsp?main=board/detailView.jsp?num=<%=dto.getNum()%>&currentPage=<%=currentPage%>"> <%=dto.getSubject()%>
					</a>
					<%
					if (dto.getAnswercount() > 0) {
					%>
					<span style="color: red; font-weight:bold; font-size: 0.7em">&nbsp;[<%=dto.getAnswercount()%>]
					</span>
					<%
					}
					%>

				</td>

				<td align="center"><%=dto.getWriter()%></td>
				<td align="center"><%=sdf.format(dto.getWriteday())%></td>
				<td align="center"><%=dto.getReadcount()%></td>
			</tr>
			<%
			}
			}
			%>
			<tr>
				<td colspan="5">
					<input type="checkbox" class="alldelcheck">
					전체선택 <span style="float: right">
						<button type="button" class="btn btn-danger" id="btndel">
							<span class="glyphicon glyphicon-remove"></span>삭제
						</button>
						<button type="button" class="btn btn-success" onclick="location.href='index.jsp?main=board/smartform.jsp'">
							<span class="glyphicon glyphicon-pencil"></span>글쓰기
						</button>
					</span>
				</td>
			</tr>
		</table>
	</div>

	<!-- 페이징 처리 -->
	<div style="width: 500px; text-align: center;" class="container">
		<ul class="pagination">
			<%
			//이전
			if (startPage > 1) {
			%>
			<li><a href="index.jsp?main=board/boardlist.jsp?currentPage=<%=startPage - 1%>">이전</a></li>
			<%
			}
			for (int pp = startPage; pp <= endPage; pp++) {
			if (pp == currentPage) {
			%>
			<li class="active"><a href="index.jsp?main=board/boardlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			} else {
			%>

			<li><a href="index.jsp?main=board/boardlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
			<%
			}
			}
			//다음
			if (endPage < totalPage) {
			%>
			<li><a href="index.jsp?main=board/boardlist.jsp?currentPage=<%=endPage + 1%>">다음</a></li>
			<%
			}
			%>
		</ul>
	</div>
</body>
</html>