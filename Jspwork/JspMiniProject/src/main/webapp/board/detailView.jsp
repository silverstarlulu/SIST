<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
span.day {
	color: gray;
	font-size: 0.8em;
}
</style>
<script>
$(function () {
	//시작 시 리스트 호출
	
	$("#btnanswer").click(function () {
		//댓글 부분에 넣을 num 값
		var num = $("#num").val();
		var nickname = $("#nickname").val();
		var content = $("#content").val();
	
		
		$.ajax({
			type:"post",
			dataType:"html",
			data:{"num":num,"nickname":nickname,"content":content},
			url:"smartanswer/insertanswer.jsp",
			success:function(res){
				alert("insert 성공");
				location.reload();
			}
		})
	})
		
})
</script>
</head>
<body>
	<%
	SmartDao dao = new SmartDao();

	String num = request.getParameter("num");
	String currentPage = request.getParameter("currentPage");

	//조회수 증가
	dao.updateReadCount(num);

	//dto 가져오기
	SmartDto dto = dao.getData(num);

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	%>
</body>
<div style="margin: 30px">
	<input type="hidden" id="num" value="<%=num%>">
	<table class="table table-condensed">
		<caption>
			<h3>
				<b><%=dto.getSubject()%></b>
			</h3>
		</caption>
		<tr>
			<td>
				<b>작성자 : <%=dto.getWriter()%></b><br> <span class="day"><%=sdf.format(dto.getWriteday())%>&nbsp;&nbsp;&nbsp;조회&nbsp;<%=dto.getReadcount()%></span>
			</td>
		</tr>
		<tr>
			<td>
				<%=dto.getContent()%>
			</td>
		</tr>
		<tr>
			<td align="right">
				<button type="button" class="btn btn-info btn-sm" onclick="location.href='index.jsp?main=board/smartform.jsp'">
					<span class="glyphicon glyphicon-pencil"></span>&nbsp;글쓰기
				</button>
				<button type="button" class="btn btn-success btn-sm" onclick="location.href='index.jsp?main=board/boardlist.jsp?currentPage=<%=currentPage%>'">
					<span class="glyphicon glyphicon-th-list"></span>&nbsp;목록
				</button>
				<button type="button" class="btn btn-warning btn-sm" onclick="location.href='index.jsp?main=board/updateform.jsp?num=<%=dto.getNum()%>&currentPage=<%=currentPage%>'">
					<span class="glyphicon glyphicon-text-height"></span>&nbsp;수정
				</button>
				<button type="button" class="btn btn-danger btn-sm" onclick="funcdel(<%=dto.getNum()%>,<%=currentPage%>)">
					<span class="glyphicon glyphicon-remove"></span>&nbsp;삭제
				</button>
			</td>
		</tr>

		<!-- 댓글 -->
		<tr>
			<td style="padding-top: 50px">
				<b class="a_count"><span>0</span></b>
				<div class="a_list">댓글목록</div>

				<div class="a_form form-inline">
					<input type="text" id="nickname" class="form-control" style="width: 100px" placeholder="닉네임 입력">
					<input type="text" id="content" class="form-control" style="width: 300px" placeholder="댓글 추가">
					<button type="button" id="btnanswer" class="btn btn-success">저장</button>
				</div>
			</td>
		</tr>
	</table>
</div>
<script>
function funcdel(num,currentPage) {
	var a=confirm("확인을 누르시면 삭제됩니다.");
	if(a){
		location.href="board/delete.jsp?num="+num+"&currentPage="+currentPage;
		}
	}
</script>
</html>