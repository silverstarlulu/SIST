<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="dao" class="data.dao.SmartAnswerDao"></jsp:useBean>
<jsp:useBean id="dto" class="data.dto.SmartAnswerDto"></jsp:useBean>
<jsp:setProperty property="*" name="dto" />
<%
request.setCharacterEncoding("utf-8");

dao.insertSmartAnswer(dto);
%>