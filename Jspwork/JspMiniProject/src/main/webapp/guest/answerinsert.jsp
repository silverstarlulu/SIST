<%@page import="data.dto.AnswerDto"%>
<%@page import="data.dao.AnswerDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");

AnswerDto dto = new AnswerDto();
dto.setNum(request.getParameter("num"));
dto.setMyid(request.getParameter("myid"));
dto.setContent(request.getParameter("content"));

AnswerDao dao = new AnswerDao();
dao.insertAnswer(dto);

String currentPage = request.getParameter("currentPage");
response.sendRedirect("../index.jsp?main=guest/guestlist.jsp?currentPage=" + currentPage);
%>