<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ajaxboard.model.AjaxBoardDto"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajaxboard.model.AjaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String num = request.getParameter("num");

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");

AjaxBoardDao dao = new AjaxBoardDao();
AjaxBoardDto dto = dao.getData(num);

JSONObject ob = new JSONObject();
ob.put("num", dto.getNum());
ob.put("writer",dto.getWriter());
ob.put("subject",dto.getSubject());
ob.put("content",dto.getContent());
ob.put("avatar",dto.getAvatar());
ob.put("writeday",sdf.format(dto.getWriteday()));
%>

<%=ob.toString() %>
