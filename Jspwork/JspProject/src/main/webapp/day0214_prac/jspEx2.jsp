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
	이름:
	<%=name%><br> 주소:
	<%=addr%><br> 나이:
	<%=age%><br>

	<%!String name = "캔디";
	String addr = "서울시 강남구";
	int age = 20;

	//메서드 등록
	public String getCheck() {
		if (age >= 20)
			return "성인입니다.";
		else
			return "미성년자입니다.";
	}%>

	<%=name%>님의 나이는
	<%=age%>세 입니다.
	<br>
	<%=getCheck()%>

	<hr>

	<%
	String hp = "010-2223-4444";
	String addr = "제주시 애월읍";

	//내장객체 out을 이용한 출력
	out.print(name + "님의 핸드폰 번호는 " + hp + "입니다.<br>");
	%>

	<h5>
		핸드폰:
		<%=hp%></h5>
	<h5>
		주소:
		<%=addr%></h5>
</body>
</html>