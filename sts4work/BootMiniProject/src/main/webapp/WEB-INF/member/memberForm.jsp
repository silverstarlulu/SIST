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
	font-size: 1.8em;
}

#showImg {
	border: 1px solid gray;
	width: 130px;
	height: 160px;
}
</style>
<script type="text/javascript">
	$(function() {
		//이미지 업로드 부분으로 트리거 연결
		$("#btnPhoto").click(function() {
			$("#myPhoto").trigger("click");
		})
		
		
		//아이디 중복체크
		$("#btnIdCheck").click(function(){
			var idCheck=$("#loginId").val();
			//alert(idCheck);
			$.ajax({
				type:"get",
				data:{"idCheck":idCheck},
				url:"/member/idCheck",
				dataType:"json",
				success:function(res){
					//alert(res.result);
					if(res.result==0) $(".idSuccess").text("사용 가능").css("color","green");
					else {
						$(".idSuccess").text("아이디 중복").css("color","red");
						$("#loginId").val("");
					}
				}
			})
		})
		
		//아이디 지우면 idSuccess 값 지우기
		$("#loginId").keydown(function(){
			$(".idSuccess").text("");
		})
		
		
		//비밀번호 확인
		$("#pass2").keyup(function(){
			var p1=$("#pass").val();
			var p2=$(this).val();
			
			if(p1==p2)  $(".passSuccess").text("일치").css("color","green");
			else  $(".passSuccess").text("불일치").css("color","red");
		})
	})
	

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
			reader.onload = function(e) {
				// 파일 읽어들이기를 성공했을 때 호출되는 이벤트 핸들러
				$("#showImg").attr("src", e.target.result);
				//이미지 Tag의 src 속성에 읽어들인 File 내용을 지정
				// 아래 코드에서 읽어들인 dataURL 형식
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	function check(){
		//사진
		if($("#myPhoto").val()==""){
			alert("사진을 넣어주세요.");
			return false;
		}
		
		//중복체크
		if($(".idSuccess").text()!="사용 가능"){
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		//비밀번호체크
		if($(".passSuccess").text()!="일치"){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	}
	

</script>
</head>
<body>
	<button type="button" class="btn btn-info" style="margin-bottom: 10px;"
		onclick="location.href='list'">회원목록</button>
	<form action="insert" method="post" enctype="multipart/form-data"
		onsubmit="return check()">
		<table class="table table-bordered">
			<caption>
				<b>회원가입</b>
			</caption>
			<tr>
				<td style="width: 200px" rowspan="5" align="center"><input
					style="display: none" type="file" id="myPhoto" name="myPhoto" onchange="readURL(this)"
					width="200px">
					<button type="button" id="btnPhoto" class="btn btn-success"
						style="margin-bottom: 20px">사진선택</button> <br> <img
					id="showImg"></td>
				<td><div class="form-inline">
						<input type="text" placeholder="아이디 입력" id="loginId" name="id"
							class="form-control" style="width: 200px" required="required">

						<button type="button" class="btn btn-warning" id="btnIdCheck">중복체크</button>
						&nbsp;<span class="idSuccess" style="width: 60px; color: green"></span>
					</div></td>
			</tr>

			<tr>
				<td>
					<div class="form-inline">
						<input type="password" style="width: 200px;" class="form-control"
							name="pass" id="pass" placeholder="비밀번호 숫자 4자리" required="required">

						<input type="password" style="width: 200px;" class="form-control"
							id="pass2" placeholder="비밀번호 확인" required="required">

						&nbsp;<span class="passSuccess" style="width: 60px; color: green"></span>
					</div>
				</td>
			</tr>

			<tr>
				<td><input type="text" name="name" class="form-control"
					style="width: 200px;" placeholder="이름 입력" required="required">
				</td>
			</tr>

			<tr>
				<td><input type="email" name="email" class="form-control"
					style="width: 200px;" placeholder="이메일 입력" required="required">
				</td>
			</tr>

			<tr>
				<td colspan="2"><div class="form-inline">
						<input type="text" name="hp" class="form-control"
							style="width: 220px;" placeholder="핸드폰 번호 (-) 없이 숫자만 입력"
							required="required"> <input type="text" name="addr"
							class="form-control" style="width: 300px;" placeholder="주소 입력"
							required="required">
					</div></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button type="submit"
						class="btn btn-success"
						style="width: 200px; height: 50px; font-size: 1.5em">회원가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>