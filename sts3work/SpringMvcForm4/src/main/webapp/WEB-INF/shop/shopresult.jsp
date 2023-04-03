<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<h2>상품 정보 출력</h2>
	상품명:
	<h4 style="color: ${dto.color}">${dto.sang }</h4>
	<h4>
		수량:
		<fmt:formatNumber pattern="#,##0">${dto.su }</fmt:formatNumber>
		개
	</h4>
	<h4>
		단가:
		<fmt:formatNumber type="currency"> ${dto.dan }</fmt:formatNumber>
	</h4>
	<c:set var="total" value="${dto.su*dto.dan}" />
	<h4>
		총 금액:
		<fmt:formatNumber type="currency"> ${total }</fmt:formatNumber>
	</h4>
</body>
</html>