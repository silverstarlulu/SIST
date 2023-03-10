<%@page import="data.dto.CartDto"%>
<%@page import="data.dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
ShopDao dao = new ShopDao();

CartDto c_dto = new CartDto();
c_dto.setShopnum(request.getParameter("shopnum"));
c_dto.setNum(request.getParameter("num"));
c_dto.setCnt(Integer.parseInt(request.getParameter("cnt")));

dao.insertCart(c_dto);
%>