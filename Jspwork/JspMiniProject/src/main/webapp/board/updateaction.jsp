<%@page import="data.dao.SmartDao"%>
<%@page import="data.dto.SmartDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");

String currentPage = request.getParameter("currentPage");

SmartDto dto = new SmartDto();
String num = request.getParameter("num");
dto.setNum(num);
dto.setWriter(request.getParameter("writer"));
dto.setSubject(request.getParameter("subject"));
dto.setContent(request.getParameter("content"));

SmartDao dao = new SmartDao();
dao.updateSmart(dto);

response.sendRedirect("../index.jsp?main=board/detailView.jsp?num=" + num + "&currentPage=" + currentPage);
%>