<%@page import="data.dao.GuestDao"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String myid = (String) session.getAttribute("myid");

//파일 업로드 게시판이므로
//이미지 업로드 되는 실제 경로
String realPath = getServletContext().getRealPath("/save");
System.out.println(realPath);

//업로드 사이즈
int uploadSize = 1024 * 1024 * 2; //2mb

MultipartRequest multi = null;

try {
	multi = new MultipartRequest(request, realPath, uploadSize, "utf-8", new DefaultFileRenamePolicy());

	//multi로 데이터 읽어오기
	String content = multi.getParameter("content");
	String photoname = multi.getFilesystemName("photo"); //실제 업로드 된 파일명

	//dto에 저장
	GuestDto dto = new GuestDto();
	dto.setMyid(myid);
	dto.setContent(content);
	dto.setPhotoname(photoname);

	//dao선언
	GuestDao dao = new GuestDao();
	dao.insertGuest(dto);

	//이동
	response.sendRedirect("../index.jsp?main=guest/guestlist.jsp");
} catch (Exception e) {
	System.out.println("업로드 오류 : "+e.getMessage());
}
%>