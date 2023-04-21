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
<link
	href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

table {
	font-size: 1.2em;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#btnNewPhoto").click(function() {
			$("#newPhoto").trigger("click");
		})

		$("#newPhoto").change(function() {
			var num = $(this).attr("num");
			//alert(num);

			var form = new FormData();
			form.append("photo", $("#newPhoto")[0].files[0]);
			form.append("num", num);

			//console.dir(form);

			$.ajax({
				type : "post",
				dataType : "text",
				url : "/member/updatePhoto",
				processData : false, //쿼리스트링 형태로 되어있는데 폼데이터는 true가 디폴트
				contentType : false,
				data : form,
				success : function() {
					location.reload();
				}
			})
		})
	})
</script>
</head>
<body>
	<div style="margin: 100px">
		<table class="table table-bordered">
			<c:forEach var="dto" items="${list }">
				<c:if
					test="${sessionScope.loginOk!=null && sessionScope.loginUser==dto.id }">
					<tr>
						<td style="width: 250px" align="center" rowspan="5"><img
							src="../photo/${dto.photo }" width="220" border="1"><br>
							<input type="file" id="newPhoto" style="display: none;"
							num=${dto.num }>
							<button type="button" class="btn btn-info" id="btnNewPhoto"
								style="margin-top: 10px;">사진수정</button></td>
						<td style="width: 300px">회원명: ${dto.name }</td>
						<td rowspan="5" align="center"
							style="width: 200px; vertical-align: middle">

								<!-- Modal -->
								<div class="modal fade" id="myModal1" role="dialog">
									<div class="modal-dialog">
										<form action="update" method="post">
											<input type="hidden" id="num" value="${dto.num }">
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">회원정보 수정</h4>
												</div>
												<div class="modal-body">

													<table class="table table-bordered">
														<tr>
															<td><input type="text" id="name"
																class="form-control" style="width: 100%;"
																value="${dto.name }"></td>
														</tr>

														<tr>
															<td><input type="email" id="email"
																class="form-control" style="width: 100%;"
																value="${dto.email }"></td>
														</tr>

														<tr>
															<td colspan="2"><div class="form-inline">
																	<input type="text" id="hp" class="form-control"
																		style="width: 48%;" value="${dto.hp }"> <input type="text"
																		id="addr" class="form-control" value="${dto.addr }"
																		style="width: 48%">
																</div></td>
														</tr>
													</table>
												</div>
												<div class="modal-footer">

													<button type="button" id="btnUpdateSubmit" class="btn btn-default"
														data-dismiss="modal">정보수정</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">취소</button>
												</div>
											</div>
										</form>
									</div>
								</div>

							<button id="btnUpdate" type="button" class="btn btn-info"
								data-toggle="modal" data-target="#myModal1">수정</button>
							<button type="button" num="${dto.num }" class="btn btn-danger"
								id="btnDelete">삭제</button>
						</td>
					</tr>
					<tr>
						<td style="width: 300px">아이디: ${dto.id }</td>
					</tr>
					<tr>
						<td style="width: 300px">이메일: ${dto.email }</td>
					</tr>
					<tr>
						<td style="width: 300px">핸드폰: ${dto.hp }</td>
					</tr>
					<tr>
						<td style="width: 300px">주소: ${dto.addr }</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>

	<script>
		$("#btnDelete").click(function() {
			var num = $(this).attr("num");
			//alert(num);

			$.ajax({
				type : "get",
				data : {
					"num" : num
				},
				dataType : "html",
				url : "/member/delete",
				success : function() {
					location.href = "/";
				}
			})
		})
		
		/* $("#btnUpdateSubmit").click(function(){
			var num=$("#num").val();
			var name=$("#name").val();
			var hp=$("#hp").val();
			var addr=$("#addr").val();
			var email=$("#email").val();
			//alert(num+name+hp+addr+email);
			
			$.ajax({
				type:"post",
				data:{"num":num,"name":name,"hp":hp,"addr":addr,"email":email},
				dataType:"html",
				url:"/member/update",
				success:function(){
					alert("수정성공");
					location.reload("/member/myinfo");
				}
			})
		}) */
		
		$("#btnUpdateSubmit").click(function(){
			var num=$("#num").val();
			var name=$("#name").val();
			var hp=$("#hp").val();
			var addr=$("#addr").val();
			var email=$("#email").val();
			//alert(num+name+hp+addr+email);
			
			var data="num="+num+"&name="+name+"&hp="+hp+"&addr="+addr+"&email="+email;
			console.log(data);
			
			 $.ajax({
				type:"post",
				data:data,
				dataType:"text",
				url:"/member/update",
				success:function(){
					alert("수정성공");
					location.reload("/member/myinfo");
				}
			})
		})
		
		
	</script>


</body>

</html>