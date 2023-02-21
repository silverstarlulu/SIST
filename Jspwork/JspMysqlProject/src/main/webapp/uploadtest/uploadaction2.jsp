<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	MultipartRequest multi = null;

	//톰캣에 업로드되는 실제 프로젝트 경로구하기
	ServletContext context = getServletContext();
	//프로젝트 업로드의 실제 경로구하기
	String realFolder = context.getRealPath("/save");
	System.out.println(realFolder);

	//업로드 허용할 사이즈
	int uploadsize = 1024 * 1024 * 3; //3mb

	try {
		multi = new MultipartRequest(request, realFolder, uploadsize, "utf-8", new DefaultFileRenamePolicy());

		String writer = multi.getParameter("writer");
	%>
	<h2>
		작성자:
		<%=writer%></h2>

	<%
	//파일타입이 여러개인 경우 enumeration 사용
	Enumeration forNames = multi.getFileNames(); //file 타입만 얻어옴

	while (forNames.hasMoreElements()) {
		//파일태그의 name 얻기
		String fileName = (String) forNames.nextElement();
		System.out.println("fileType의 name: " + fileName);

		//실제 업로드된 파일명 얻기
		String uploadFileName = multi.getFilesystemName(fileName);

		//파일 선택 안하면 null
		if (uploadFileName != null) {
	%>
	<figure>
		<img alt="" src="../save/<%=uploadFileName%>" style="max-width: 200px; border: 3px solid red">
		<br>

		<figcaption>
			<b><%=uploadFileName%></b>
		</figcaption>
	</figure>
	<%
	}
	}
	%>
	<%
	} catch (Exception e) {

	}
	%>
</body>
</html>