<%@page import="boot.data.dto.BoardAnswerDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

a.download {
	color: black;
	font-size: 0.6em;
}

table {
	font-size: 1.4em;
}

.day{
	font-size:0.8em;
	color: gray;
}
</style>
<script type="text/javascript">
$(function(){

	anum=$("#anum").val();
	loginOk = "${sessionScope.loginOk}";
	loginUser ="${sessionScope.loginUser}";
	
	aList();
	
	$("#aInsertBtn").click(function(){
		var acontent = $("#acontent").val();
		
		if(acontent.trim().length==0){
			alert("댓글을 입력해주세요.");
			return 0;
		} else {
			
			$.ajax({
				type:"post",
				url:"aInsert",
				data:{"num":anum,"content":acontent},
				dataType:"html",
				success:function(){
					alert("댓글 입력 성공");
					
					$("#acontent").val("");
					aList();
				}
			})
		}
		
	})
	
	
	$(document).on("click", ".adel", function (e) {
		var idx=$(this).attr("idx");
		
		//alert(idx);
		
		$.ajax({
				type:"get",
				url:"aDelete",
				data:{"idx":idx},
				dataType:"html",
				success:function(){
					alert("댓글 삭제 성공");
					
					aList();
				}
			})
	});

	
})

	function aList() {
		$.ajax({
			type:"get",
			url:"aList",
			dataType:"json",
			data:{"num":anum},
			success:function(res){
				$("span.acount").text(res.length);
				
				var s="";
				$.each(res,function(i,ele){
					s+=ele.loginUser+"<span class='day'>("+ele.name+")</span>&nbsp;:&nbsp;<span>"+ele.content+"</span>&nbsp;&nbsp;&nbsp;&nbsp;";
					s+="<span class='day'>"+ele.writeday+"</span>";
					
					if(loginOk=='yes'&&loginUser==ele.loginUser){
						s+="<span class='glyphicon glyphicon-ok-circle amod' data-toggle='modal' data-target='#updateModal' style='font-size:0.7em; color:green; margin-left:20px; cursor:pointer;' idx='"+ele.idx+"' originContent='"+ele.content+"'></span>";
						s+="<span class='glyphicon glyphicon-remove-circle adel' style='font-size:0.7em; color:red; margin:0 10px; cursor:pointer;' idx='"+ele.idx+"'></span>";
					}
					
					s+="<br>";
				})
				
				$("div.alist").html(s);
			}
		})
	}
</script>
</head>
<body>



  <!-- Modal -->
  <div class="modal fade" id="updateModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">댓글 수정</h4>
        </div>
        <div class="modal-body">
          	<div class="form-inline" class="uform">
						<input type="text" class="form-control" id="ucontent" size="55">
			</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" id="aUpdateBtn" data-dismiss="modal">댓글 수정</button>
        </div>
      </div>
      
    </div>
  </div>

	<script>
		$(document).on("click", ".amod", function (e) {
			var originContent=$(this).attr("originContent");
			$("#ucontent").val(originContent);

		});
	
		$(document).on("click", "#aUpdateBtn", function (e) {
			var idx=$(".amod").attr("idx");
			var ucontent=$("#ucontent").val();
			
			
			//alert(ucontent);
			
			 $.ajax({
					type:"post",
					url:"aUpdate",
					data:{"idx":idx,"content":ucontent},
					dataType:"html",
					success:function(){
						
						aList();
					}
				})
		});
	</script>



	<table class="table table-bordered" style="width: 800px">
		<tr>
			<td><h3 style="font-size: 1.7em">
					<b>${dto.subject }</b>
					<span style="color: gray; float: right; font-size: 0.4em">
						<fmt:formatDate value="${dto.writeday }" pattern="yy-MM-dd HH:mm" />&nbsp;&nbsp;
							<b>조회: ${dto.readcount }</b>
					</span>
				</h3> <span>작성자: ${dto.loginUser }<span style="font-size: 0.6em">(${dto.name })</span></span>
				<c:if test="${dto.uploadfile!='no image' }">
					<span style="float: right"><a class="download"
						href="download?clip=${dto.uploadfile }"><span
							class="glyphicon glyphicon-download-alt">&nbsp;${dto.uploadfile }</span></a></span>
				</c:if></td>
		</tr>

		<tr>
			<td><c:if test="${bupload==true }">
					<h3>업로드 파일이 이미지입니다.</h3>
					<img src="../photo/${dto.uploadfile }" style="max-width: 300px">
				</c:if><br> <br> <pre>${dto.content }</pre><br></td>
		</tr>
		
		
		<!-- 댓글 -->
		<tr>
		<td>
			<b>댓글 :
				<span class="acount"></span>
			</b>
		</td>
		</tr>
		<tr>
			<td>
				<div class="alist"></div>
				
				<c:if test="${sessionScope.loginOk!=null }">
					<div class="form-inline" class="aform">
						<input type="hidden" value="${dto.num }" id="anum">
						<input type="text" class="form-control" id="acontent" placeholder="댓글을 입력하세요." size="80">
						<button type="button" class="btn btn-info" id="aInsertBtn">댓글 등록</button>
					</div>
				</c:if>
			</td>
		</tr>


		<tr>
			<td style="width: 100%"><c:if
					test="${sessionScope.loginOk!=null && sessionScope.loginUser==dto.loginUser }">
					<button type="button" class="btn btn-info btn-sm"
						onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage}'">수정</button>
					<button type="button" class="btn btn-danger btn-sm"
						onclick="location.href='delte?num${dto.num}&currentPage=${currentPage }'">삭제</button>
				</c:if> <c:if test="${sessionScope.loginOk!=null }">
					<button type="button" class="btn btn-info btn-sm"
						onclick="location.href='form'">글쓰기</button>
				</c:if>

				<button type="button" class="btn btn-success btn-sm"
					onclick="location.href='list?currentPage=${currentPage}'">목록으로</button></td>
		</tr>
	</table>
</body>
</html>