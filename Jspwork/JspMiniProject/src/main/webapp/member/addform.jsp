<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR&family=Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
	$(function() {
		//id 중복체크
		$("#btncheck").click(function() {
			var id = $("#id").val();
			
			$.ajax({
				type : "get",
				url : "member/idsearch.jsp",
				dataType : "json",
				data : {"id" : id},
				success : function(res){
					//console.log(res.count);
					if(res.count==1){
						//alert("이미 가입된 아이디입니다.\n다시 입력해주세요.");
						$(".idsuccess").text("사용 불가").css("color","red");
						$("#id").val("");
						$("#id").focus();
					} else{
						//alert("가입 가능한 아이디입니다.");
						$(".idsuccess").text("사용 가능").css("color","blue");
					}
				}
			})
		})

		//이메일 선택
		$("#selEmail").change(function() {
			if ($(this).val() == '-') { //직접입력
				$("#email2").val('');
			} else {
				$("#email2").val($(this).val());
			}
		})
	})

	//사용자 정의함수
	//비밀번호 틀릴 시 진행x
	function passcheck(f) {
		if (f.pass.value != f.pass2.value) {
			alert("비밀번호가 서로 다릅니다.");

			f.pass.value = "";
			f.pass2.value = "";

			return false; //action 호출 안되도록
		}
	}
</script>
</head>
<body>
	<form action="member/addaction.jsp" method="post" class="form-inline" onsubmit="return passcheck(this)">
		<table class="table table-bordered" style="width: 600px">
			<caption>
				<b>회원가입</b>
			</caption>
			<tr>
				<th width="100" bgcolor="#aaa">아이디</th>
				<td>
					<input type="text" name="id" id="id" required="required" style="width: 130px" class="form-control" placeholder="아이디 입력">
					<button type="button" class="btn btn-warning" id="btncheck">중복체크</button>
					<span class="idsuccess"></span>
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#aaa">비밀번호</th>
				<td>
					<input type="password" name="pass" required="required" style="width: 130px" class="form-control" placeholder="비밀번호 입력">
					<input type="password" name="pass2" required="required" style="width: 130px" class="form-control" placeholder="비밀번호 확인">
				</td>
			</tr>
			</tr>
			<tr>
				<th width="100" bgcolor="#aaa">이름</th>
				<td>
					<input type="text" name="name" required="required" style="width: 130px" class="form-control" placeholder="이름 입력">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#aaa">핸드폰</th>
				<td>
					<input type="text" name="hp" required="required" style="width: 130px" class="form-control" placeholder="핸드폰 번호 입력">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#aaa">주소</th>
				<td>
					<input type="text" name="addr" required="required" style="width: 130px" class="form-control" placeholder="주소 입력">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#aaa">이메일</th>
				<td>
					<input type="text" name="email1" class="form-control" required="required" style="width: 120px;" placeholder="이메일 입력">
					<b>@</b>
					<input type="text" name="email2" id="email2" class="form-control" required="required" style="width: 150px;">
					<select id="selEmail" class="form-control">
						<option value="-">직접입력</option>
						<option value="naver.com">네이버</option>
						<option value="gmail.com">구글</option>
						<option value="daum.net">다음</option>
						<option value="nate.com">네이트</option>
					</select>

				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="submit" class="btn btn-success" style="width: 100px">회원가입</button>
					<button type="reset" class="btn btn-default" style="width: 100px">초기화</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>