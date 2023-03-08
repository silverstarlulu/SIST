<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dto.SmartAnswerDto"%>
<%@page import="data.dao.SmartAnswerDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String idx = request.getParameter("idx");
SmartAnswerDao a_dao = new SmartAnswerDao();
SmartAnswerDto dto = a_dao.getAnswerData(idx);

JSONObject ob = new JSONObject();
ob.put("idx", dto.getIdx());
ob.put("nickname", dto.getNickname());
ob.put("content", dto.getContent());
%>
<%=ob.toString()%>