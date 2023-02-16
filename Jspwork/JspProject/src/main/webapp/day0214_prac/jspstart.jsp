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
	<h2>Jsp는 HTML5 구조에 자바코드를 사용할 수 있는 서버언어</h2>
	<h2>확장자가 java, 자바클래스 구조에 html, css, js도 사용할 수 있는 서버언어</h2>
	<hr>
	<h4>jsp는 두가지 주석이 가능</h4>
	<!-- html 기본주석, 소스보기에서 보임 -->
	<%--jsp 주석, 소스보기에서 보이지 x --%>
	<%!//선언문
	//이곳에서 선언한 변수나 메서드는 클래스의 멤버변수나 메서드로 등록
	//위치가 어디에 있던 관계 x%>

	<h4>java코드를 jsp에서 쓰려면 scriptlet 영역을 표시 후 코딩</h4>
	<%
	//스크립트릿
	//여기서 선언하는 변수는 지역변수로 등록
	//사용은 선언한 곳보다는 아래에서!
	int age=20;
	String name="송혜교";
	%>
	
	<h4>문자열이나 변수출력은 표현식 사용</h4>
	<b>이름: </b><%=name %><br>
	<b>나이: </b><%=age %>세<br>
</body>
</html>