<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");

SmartDto dto = new SmartDto();
dto.setWriter(request.getParameter("writer"));
dto.setSubject(request.getParameter("subject"));
dto.setContent(request.getParameter("content"));

SmartDao dao = new SmartDao();
dao.insertSmart(dto);

//방금 추가된 num값
int num = dao.getMaxNum();

response.sendRedirect("../index.jsp?main=board/detailView.jsp?num=" + num + "&currentPage=1");
%>