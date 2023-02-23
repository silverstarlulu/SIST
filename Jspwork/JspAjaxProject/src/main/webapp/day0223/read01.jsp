<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<img alt="" src="../image/01.png">
	<br>
	<button type="button" class="btn btn-info" id="btn1">data1.xml읽기</button>
	<button type="button" class="btn btn-warning" id="btn2">data1.json읽기</button>
	<br>
	<div id="result">결과</div>
	<script type="text/javascript">
		$("#btn1").click(
				function() {
					$("#result").empty();

					//xml 읽기
					$.ajax({
						type : "get",
						url : "data1.xml",
						dataType : "xml",
						success : function(res) { //데이터 불러오기 성공 시
							var s = "City: "
									+ $(res).find("name").attr("city")
									+ "<br>";
							s += "Name: " + $(res).find("name").text()
									+ "<br>";
							s += "Age: " + $(res).find("age").text() + "<br>";

							$("#result").append(s);
						},
						statusCode : { //데이터 불러오기 실패 시
							404 : function() {
								alert("xml파일을 찾을 수 없습니다.");
							},
							500 : function() {
								alert("서버오류입니다. 코드를 다시 살펴보세요.");
							}
						}
					})

				})
		//json 읽기
		$("#btn2").click(function() {
			$("#result").empty();

			$.ajax({
				type : "get",
				url : "data1.json",
				dataType : "json",
				success : function(res) {
					var s = "이름: " + res.name + "<br>";
					s += "주소: " + res.addr + "<br>";
					s += "점수: " + res.score + "<br>";

					$("#result").append(s);
				},
				statusCode : { //데이터 불러오기 실패 시
					404 : function() {
						alert("json파일을 찾을 수 없습니다.");
					},
					500 : function() {
						alert("서버오류입니다. 코드를 다시 살펴보세요.");
					}
				}

			})
		})
	</script>
</body>
</html>