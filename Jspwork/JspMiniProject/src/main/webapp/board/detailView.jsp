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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
span.day {
	color: gray;
	font-size: 0.8em;
}

div.a_list {
	margin-left: 10px;
	color: gray;
	font-size: 0.8em;
}

td.a_day {
	font-size: 0.8em;
	color: gray;
}
</style>
<script>
$(function () {
	//시작 시 리스트 호출
	list();
	
	$("#btnanswer").click(function () {
		//댓글 부분에 넣을 num 값
		var num = $("#num").val();
		var nickname = $("#nickname").val();
		var content = $("#content").val();
	
		
		$.ajax({
			type:"get",
			dataType:"html",
			data:{"num":num,"nickname":nickname,"content":content},
			url:"smartanswer/insertanswer.jsp",
			success:function(res){
				//alert("insert 성공");
				$("#nickname").val("");
				$("#content").val("");
				
				list();
			}
		})
	})
		
})

function list() {
	console.log("list num="+$("#num").val());
	
	$.ajax({
		type: "get",
		url:"smartanswer/listanswer.jsp",
		dataType:"json",
		data:{"num":$("#num").val()},
		success:function(res){
			$("b.a_count>span").text(res.length);
			
			var s="";
			$.each(res,function(i,item){
				s+="<table style='margin-top:10px;'><tr><td><b>"+item.nickname+"</b>&nbsp;:&nbsp;"+item.content+"</td>";
				s+="<td class='a_day'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+item.writeday+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				s+="<span style='color: green; cursor:pointer; margin-right:10px' class='a_mod glyphicon glyphicon-ok-circle' idx="+item.idx+"></span>";
				s+="<span style='color: red; cursor:pointer;' class='a_del glyphicon glyphicon-remove-circle' idx="+item.idx+"></span></td></tr></table>";
			})
			
			$("div.a_list").html(s);
		}
	})
}

$(document).on("click",".a_del",function(){
	var idx = $(this).attr("idx");
	//alert(idx);
	var a=confirm("삭제하시겠습니까?");
	if(a){
		$.ajax({
			type: "get",
			url:"smartanswer/deleteanswer.jsp",
			dataType:"html",
			data:{"idx":idx},
			success:function(res){
				alert(idx+"번 댓글 삭제 완료");
				list();
			}
		})
	}
})

$(document).on("click",".a_mod",function(){
	idx = $(this).attr("idx");
	//alert(idx);
	
	$.ajax({
			type: "get",
			url:"smartanswer/jsonupdateform.jsp",
			dataType:"json",
			data:{"idx":idx},
			success:function(res){
				nickname=res.nickname;
				var ucontent=res.content;
				$("#unickname").text(nickname+"님 댓글 수정");
				$("#ucontent").val(ucontent).css({"color":"gray","font-size":"0.8em"});
			}
		})
	
	$("#myModal").modal();
	
})

$(document).on("click","#btnupdate",function(){
	var ucontent = $("#ucontent").val();
	//alert(idx);
	
	$.ajax({
		type:"get",
		dataType:"html",
		data:{"idx":idx,"nickname":nickname,"content":ucontent},
		url:"smartanswer/updateanswer.jsp",
		success:function(res){
			alert("수정 완료");
			
			list();
		}
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
				<div style="margin-bottom: 5px">
					<span style="margin-right: 5px">댓글목록</span><b class="a_count"><span>0</span></b>
				</div>
				<div class="a_form form-inline" style="display: flex; justify-content:flex-start; align-items: center">
					<input type="text" id="nickname" class="form-control" style="width: 100px; height: 25px; margin-right: 3px;" placeholder="닉네임 입력">
					<input type="text" id="content" class="form-control" style="width: 250px; height: 25px; margin-right: 7px;" placeholder="댓글 추가">
					<button type="button" id="btnanswer" class="btn btn-success" style="height: 25px; display: flex; align-items: center">저장</button>
				</div>
				<div class="a_list"></div>
			</td>
		</tr>
	</table>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog modal-sm">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="unickname"></h4>
			</div>
			<div class="modal-body">
				<div style="margin-bottom: 5px">
					<b>내용수정</b>
				</div>
				<div>
					<input type="text" id="ucontent" style="width: 200px;">
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="btnupdate">댓글 수정</button>
			</div>
		</div>

	</div>
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