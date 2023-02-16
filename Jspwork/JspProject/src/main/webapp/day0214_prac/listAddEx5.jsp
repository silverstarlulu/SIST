<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<%
	List<String> list = new ArrayList();

	list.add("yellow");
	list.add("red");
	list.add("tomato");
	list.add("cyan");
	list.add("gray");

	for (String a : list) {
	%>
	<div style="width: 50px; height: 50px; background-color: <%=a%>"><%=a%></div>
	<%
	}
	%>
</body>
</html>