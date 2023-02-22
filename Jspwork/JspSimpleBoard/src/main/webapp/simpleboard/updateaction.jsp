<%@page import="model.simpleboard.SimpleDao"%>
<%@page import="model.simpleboard.SimpleDto"%>
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
	//한글엔코딩
	request.setCharacterEncoding("utf-8");

	//업로드 될 경로 받아오기
	String realFolder = getServletContext().getRealPath("/upload");
	System.out.println(realFolder);
	//업로드 사이즈
	int uploadSize = 1024 * 1024; //1mb
	//생성자 파라미터 받아오기
	try {
		MultipartRequest multi = new MultipartRequest(request, realFolder, uploadSize, "utf-8",
		new DefaultFileRenamePolicy()); //같은 이름일경우 123붙이기

		//입력값 읽기(photo는 따로)
		String num = multi.getParameter("num");
		String writer = multi.getParameter("writer");
		String subject = multi.getParameter("subject");
		String pass = multi.getParameter("pass");
		String content = multi.getParameter("content");

		//실제 업로드 이미지 읽어오기
		String imgname = multi.getFilesystemName("photo"); //이미지는 따로 해줘야 함

		//dto에 담기
		SimpleDto dto = new SimpleDto();
		dto.setNum(num);
		dto.setWriter(writer);
		dto.setSubject(subject);
		dto.setPass(pass);
		dto.setContent(content);
		dto.setImgname(imgname);

		//dao 선언
		SimpleDao dao = new SimpleDao();

		//pw 확인
		boolean result = dao.isEqualPass(num, pass);
		if (result) { //맞으면 수정 후 content.jsp로
			dao.updateBoard(dto);
			response.sendRedirect("content.jsp?num=" + num);
		} else { //틀리면 alert
	%>
	<script>
		alert("비밀번호가 다릅니다.");
		history.back();
	</script>
	<%
	}

	} catch (Exception e) {

	}
	%>
</body>
</html>