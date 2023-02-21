<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
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
	//파일이 저장되는 실제 경로 구하기
	ServletContext context = getServletContext();
	String realFolder = context.getRealPath("/save");

	System.out.println("folder : " + realFolder);

	//파일 사이즈 지정
	int filesize = 1024 * 1024 * 5; //5메가
	MultipartRequest multi = null;

	try {
		//멀티로 파일을 다 담음

		multi = new MultipartRequest(request, realFolder, filesize, "UTF-8", new DefaultFileRenamePolicy()); //5개의 생성자 값 받기

		//불러오기
		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		String uploadFileName = multi.getFilesystemName("uploadFile"); //업로드 이름
		String originalFileName = multi.getOriginalFileName("uploadFile"); //실제파일이름
	%>
	<table class="table table-bordered" style="width: 500px">
		<tr>
			<th width="150">이름</th>
			<td><%=name%></td>
		</tr>
		<tr>
			<th width="150">제목</th>
			<td><%=title%></td>
		</tr>
		<tr>
			<th width="150">업로드파일명</th>
			<td>
				<img src="../save/<%=uploadFileName%>">
			</td>
		</tr>
		<tr>
			<th width="150">실제파일명</th>
			<td>
				<%=originalFileName%>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" class="btn btn-info btn-sm" onclick="history.back()">재업로드</button>
			</td>
		</tr>
	</table>
	<%
	} catch (Exception e) {

	}
	%>
</body>
</html>