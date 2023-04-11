<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
#answer {
	border: 0px solid gray;
	margin-bottom: 35px;
	padding: 10px;
}
</style>
<script>
	$(function() {
		$(".a_delete").click(function() {
			//alert("click");
			
			var idx=$(this).attr("idx");
			var pass=prompt("비밀번호를 입력하세요.");
			
			if(pass==null) return;
			
			$.ajax({
				type:"get",
				url:"a_delete",
				data:{"idx":idx,"pass":pass},
				dataType:"json",
				success:function(res){
					location.reload();
					if(res.check){
						alert("해당 댓글을 삭제하였습니다.");	
					}else{
						alert("비밀번호가 틀립니다.");
					}
				}
			})
 		})
	})
</script>
</head>
<body>
	<div style="margin: 50px">
		<table class="table table-bordered" style="width: 600px">
			<caption>
				<b>내용 보기</b>
			</caption>
			<tr>
				<td>
					<h2>
						<b>${dto.subject }</b>
					</h2> <span style="float: left">${dto.writer }</span><span
					style="float: right"><span>조회 : ${dto.readcount }&nbsp;&nbsp;|&nbsp;&nbsp;</span><span>작성일
							: <fmt:formatDate value="${dto.writeday }"
								pattern="yyyy-MM-dd HH:mm:ss" />
					</span></span>
				</td>
			</tr>
			<tr>
				<td><pre>${dto.content }</pre><br> <br> <c:if
						test="${dto.photo!='no' }">
						<c:forTokens var="photos" items="${dto.photo }" delims=",">
							<a href="../photo/${photos }"> <img src="../photo/${photos }"
								style="width: 150px">
							</a>
						</c:forTokens>
					</c:if></td>
			</tr>

			<tr>
				<td>
					<div id="answer">
						<b>댓글&nbsp;&nbsp;${a_listSize }</b>
						<hr>
						<c:forEach var="a_list" items="${a_list }" varStatus="i">
							<b>${a_list.nickname }</b>&nbsp;:&nbsp;${a_list.content }&nbsp;&nbsp;
							<span style="color: gray; font-size: 0.7em;"> <fmt:formatDate
									value="${a_list.writeday }" pattern="yy-MM-dd HH:mm" />
							</span>
							&nbsp;&nbsp;
							<span style="font-size: 0.7em; color: green; cursor: pointer;"
								class="glyphicon glyphicon-leaf"> </span>
							&nbsp;&nbsp;
							<span idx="${a_list.idx }"
								style="font-size: 0.7em; color: red; cursor: pointer;"
								class="glyphicon glyphicon-remove a_delete"></span>
							<br>
							<br>
						</c:forEach>
					</div>
					<hr>
					<form action="answer_insert" method="post" class="form-inline">
						<input type="hidden" name="num" value="${dto.num }"> <input
							type="hidden" name="currentPage" value="${currentPage }">
						<span>닉네임 : </span> <input type="text" name="nickname"
							class="form-control input-sm" style="width: 100px"
							required="required"> <span style="margin-left: 30px">비밀번호
							: </span> <input type="password" name="pass"
							class="form-control input-sm" style="width: 100px"
							required="required"> <br> <br> <input
							type="text" name="content" class="form-control input-sm"
							style="width: 500px" required="required"
							placeholder="댓글을 입력해주세요.">
						<button type="submit" class="btn btn-info btn-sm">확인</button>
					</form>
				</td>
			</tr>

			<tr>
				<td align="right">
					<button class="btn btn-default btn-sm"
						onclick="location.href='writeform'">글쓰기</button>
					<button class="btn btn-default btn-sm"
						onclick="location.href='writeform?num=${dto.num}&regroup=${dto.regroup }&restep=${dto.restep }&relevel=${dto.relevel }&currentPage=${currentPage }'">답글</button>
					<button class="btn btn-default btn-sm"
						onclick="location.href='updatepassform?num=${dto.num}&currentPage=${currentPage }'">수정</button>
					<button class="btn btn-default btn-sm"
						onclick="location.href='deletepassform?num=${dto.num}&currentPage=${currentPage }'">삭제</button>
					<button class="btn btn-default btn-sm"
						onclick="location.href='list?currentPage=${currentPage}'">목록</button>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>