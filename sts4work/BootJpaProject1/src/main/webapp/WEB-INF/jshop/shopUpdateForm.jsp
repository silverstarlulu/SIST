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
	<form action="update" method="post">
	<input type="hidden" name="num" value="${dto.num }">
		<table class="table table-bordered" style="width: 400px">
			<caption>
				<b>상품수정</b>
			</caption>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">상품명</th>
				<td><input type="text" name="sangpum" class="form-control" value="${dto.sangpum }"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">가격</th>
				<td><input type="text" name="price" class="form-control" value="${dto.price }"></td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">상품사진</th>
				<td>
					<select name="photo">
						<option value="포차코2.png" ${dto.photo=="포차코2.png"?"selected":""}>포차코</option>
						<option value="피짱즈.png" ${dto.photo=="피짱즈.png"?"selected":""}>피짱즈</option>
						<option value="케로피2.png" ${dto.photo=="케로피2.png"?"selected":""}>케로피</option>
					</select>
				</td>
			</tr>
			<tr>
				<th width="150"
					style="background-color: #A9907E; color: white; text-align: center; vertical-align: middle;">입고일</th>
				<td><input type="date" name="ipgoday" value="2023-01-01" value="${dto.ipgoday }"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit"
						class="btn btn-warning">상품수정</button>
					<button type="button" class="btn btn-default"
						onclick="history.back()">취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>