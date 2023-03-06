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
span.wday, span.likes, span.likesheart, span.chu, span.answer {
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
<script>
	$(function() {
		$("span.likes").click(function() {
			var num = $(this).attr("num");
			var tag = $(this);

			//alert(num);

			$.ajax({
				type : "get",
				dataType : "json",
				url : "guest/ajaxlikechu.jsp",
				data : {
					"num" : num
				},
				success : function(res) {
					tag.next().text(res.chu);

					tag.next().next().animate({
						"font-size" : "20px"
					}, 1000, function() {
						//애니메이션 끝난 후
						$(this).css("font-size", "0px");
					})
				}
			})
		})

		//댓글은 안보이게
		$("div.answer").hide();

		//댓글 클릭시 보였다 안보였다
/* 		$("span.answer").click(function() {
			$("div.answer").toggle();
		}) */
		
		$("span.answer").click(function() {
			var num=$(this).attr("num");
			var num2=$(this).parent().parent().siblings().find(".answer").attr("num");
			if(num==num2){
				$(this).parent().parent().siblings().find(".answer").toggle();
			}
		})
		
		$(document).on("click","span.a_del",function(){
			var idx=$(this).attr("idx");
			//alert(idx);
			
			$.ajax({
				type:"get",
				url:"guest/answerDelete.jsp",
				dataType:"html",
				data:{"idx":idx},
				success:function(res){
					location.reload();
				}
			})
		}) 

		
	})
</script>
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
					<%
					//각 방명록에 달린 댓글 목록 가져오기
					AnswerDao a_dao = new AnswerDao();
					List<AnswerDto> a_list = a_dao.getAllAnswers(dto.getNum());
					%>
				
					<span class="glyphicon glyphicon-user"></span> <b> <%=name%></b>(<%=dto.getMyid()%>)
					<span class="wday"><%=sdf.format(dto.getWriteday())%></span>
					<span class="answer" style="margin-left: 10px; cursor: pointer;" num="<%=dto.getNum()%>">댓글<%=a_list.size() %></span>
					<span class="likes" style="margin-left: 10px; cursor: pointer;" num="<%=dto.getNum()%>">추천</span>
					<span class="chu"><%=dto.getChu()%></span>
					<span class="likesheart glyphicon glyphicon-heart" style="color: red; font-size: 0px"></span>
					
					<%
					//로그인한 아이디와 글을 쓴 아이디가 같을 경우 수정삭제 버튼
					if (loginok != null && dto.getMyid().equals(myid)) {
					%>
					<span class="aa">|&nbsp;<a style="color: black;" href="guest/delete.jsp?num=<%=dto.getNum()%>&currentPage=<%=currentPage%>">삭제</a></span> <span class="aa"><a style="color: black;" href="index.jsp?main=guest/updateform.jsp?num=<%=dto.getNum()%>&currentPage=<%=currentPage%>">수정</a>&nbsp;</span>
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

			<tr>
				<td>
					<!-- 댓글 -->
					<div class="answer" num="<%=dto.getNum()%>">
						<!-- 로그인 상태만 댓글입력폼 나타나도록 -->
						<%
						if (loginok != null) {
						%>
						<div class="answerform">
							<form action="guest/answerinsert.jsp" method="post">
								<input type="hidden" name="num" value="<%=dto.getNum()%>">
								<input type="hidden" name="myid" value="<%=myid%>">
								<input type="hidden" name="currentPage" value="<%=currentPage%>">
								<table style="margin-bottom: 10px;">
									<tr>
										<td>
											<textarea style="width: 500px; height: 70px" name="content" required="required" class="form-control"></textarea>
										</td>
										<td>
											<button type="submit" class="btn btn-success" style="width: 70px; height: 70px; margin-left: 10px">등록</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<%
						}
						%>
						<!-- 댓글 출력은 전부 보이도록 -->
						<div class="answerlist">
							<table class="table" style="width: 500px">
							<%
							for(AnswerDto a_dto : a_list){
								%>
								<tr>
									<td width="60" align="left">
										<span class="glyphicon glyphicon-user" style="font-size: 10pt; color: gray"></span>
										<%
										//작성자명 얻기
										String a_name = mdao.getName(a_dto.getMyid());
										%>
										<b><%=a_name %></b>&nbsp;(<%=a_dto.getMyid() %>)&nbsp;
										<%
										if(dto.getMyid().equals(a_dto.getMyid())){
											%>
											<span style="font-size: 10pt; color: blue; border: 1px solid blue; border-radius: 8px">&nbsp;작성자&nbsp;</span>
											<%
										}
										%>
										<span style="font-size: 10pt; color: gray;"><%=sdf.format(a_dto.getWriteday()) %></span>
										<%
										//댓글삭제는 로그인중이면서 로그인한 아이디와 같을경우에만 삭제아이콘 보이게
										if(loginok != null && a_dto.getMyid().equals(myid)){
											%>
											<span class="a_del glyphicon glyphicon-trash" idx="<%=a_dto.getIdx() %>" style="font-size: 10pt; color: red; margin-right: 30px; cursor: pointer; float: right;"></span>
											<%
										}
										%>
										<br>
										<span style="font-size: 10pt"><%=a_dto.getContent().replace("\n", "<br>") %></span>
									</td>
								</tr>
								<%
							}
							%>
							</table>
						</div>
					</div>
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