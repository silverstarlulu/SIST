<%@page import="data.dao.ShopDao"%>
<%@page import="data.dto.ShopDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String myid = (String) session.getAttribute("myid");

//파일 업로드 게시판이므로
//이미지 업로드 되는 실제 경로
String realPath = getServletContext().getRealPath("/shopsave");
System.out.println(realPath);

//업로드 사이즈
int uploadSize = 1024 * 1024 * 2; //2mb

MultipartRequest multi = null;

try {
	multi = new MultipartRequest(request, realPath, uploadSize, "utf-8", new DefaultFileRenamePolicy());

	//multi로 데이터 읽어오기
	String category = multi.getParameter("category");
	String sangpum = multi.getParameter("sangpum");
	int price = Integer.parseInt(multi.getParameter("price"));
	String photo = multi.getFilesystemName("photo");
	String ipgoday = multi.getParameter("ipgoday");

	//dto에 저장
	ShopDto dto = new ShopDto();
	dto.setCategory(category);
	dto.setSangpum(sangpum);
	dto.setPrice(price);
	dto.setPhoto(photo);
	dto.setIpgoday(ipgoday);

	//dao선언
	ShopDao dao = new ShopDao();
	dao.insertShop(dto);

	//이동
	response.sendRedirect("../index.jsp?main=shop/shoplist.jsp");
} catch (Exception e) {
	System.out.println("업로드 오류 : " + e.getMessage());
}
%>