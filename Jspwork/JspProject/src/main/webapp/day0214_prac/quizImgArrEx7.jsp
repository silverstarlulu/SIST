<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style>
img {
	cursor: pointer;
}

/* img:hover {
	width: 200px;
} */
</style>

<script>
	$(function() {
		$("img").mouseenter(function() {
			$(this).hide('slow');
		})

		$("img").mouseleave(function() {
			$(this).show('slow');
		})
	})
</script>


</head>
<body>
	<table>
		<%
		int n = 0;
		for (int i = 0; i < 4; i++) {
		%>
		<tr>
			<%
			for (int j = 0; j < 5; j++) {
				n++;
			%>
			<td>
				<img class="img-circle" src="../image/<%=n%>.jpg" width="100px" height="100px">
			</td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>