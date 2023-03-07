<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String nums = request.getParameter("nums");

String[] num = nums.split(",");

SmartDao dao = new SmartDao();

for (String n : num) {
	dao.deleteSmart(n);
}

response.sendRedirect("../index.jsp?main=board/boardlist.jsp");
%>