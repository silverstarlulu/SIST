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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
b {
	color: #2A2F4F;
}

b:hover {
	text-decoration: none;
}
</style>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<div>
		<a href="${root }"> <img src="${root }/image/산리오즈.png" width="25%"
			height="100%"> <b style="font-size: 1.8em">스프링부트 MyBatis +
				Tiles</b>
		</a>
		<c:if test="${sessionScope.loginOk==null }">
			<!-- Trigger the modal with a button -->
			<button type="button" style="margin-left: 10px;"
				class="btn btn-default btn-sm" data-toggle="modal"
				data-target="#myModal">LOGIN</button>
		</c:if>

		<c:if test="${sessionScope.loginOk!=null }">
			<!-- Trigger the modal with a button -->
			<button type="button" style="margin-left: 10px;"
				class="btn btn-default btn-sm" id="btnLogout">LOGOUT</button>
		</c:if>

	</div>
	<div align="right">
		<c:if test="${sessionScope.loginOk!=null }">
			<span><b>${sessionScope.loginName }님
				환영합니다.</b></span>
		</c:if>
	</div>


	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">USER LOGIN</h4>
					</div>

					<div class="modal-body">
						<input type="text" id="loginId" placeholder="Input ID"
							style="height: 45px" class="form-control" required="required"
							autofocus="autofocus" value="${sessionScope.saveOk==null?"":sessionScope.loginUser }"><br>
						<input type="password" id="loginPass" placeholder="Input PW"
							style="height: 45px" class="form-control" required="required"><br>
						<input type="checkbox" name="cbSave"
							${sessionScope.saveOk==null?"":"checked" }>&nbsp;save
						ID&nbsp;&nbsp;
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btnLogin">LOGIN</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">BACK</button>
					</div>
				</div>

			</div>
		</div>


	</div>


	<script>
		$("#btnLogin").click(function() {
			//아이디 비번
			var id = $("#loginId").val();
			var pass = $("#loginPass").val();
			var root = '${root}';
			//alert(id + " " + pass);

			$.ajax({
				type : "get",
				dataType : "json",
				url : root + "/member/login",
				data : {
					"id" : id,
					"pass" : pass
				},
				success : function(res) {
					if (res.result == "fail") {
						alert("아이디나 비밀번호를 다시 확인하세요.");
					} else {
						location.reload();
					}
				}
			})
		})

		$("#btnLogout").click(function() {
			//alert("click");

			var root = '${root}';

			$.ajax({
				type : "get",
				dataType : "html",
				url : root + "/member/logout",
				success : function(res) {
					location.reload();
				}
			})
		})
	</script>

</body>
</html>