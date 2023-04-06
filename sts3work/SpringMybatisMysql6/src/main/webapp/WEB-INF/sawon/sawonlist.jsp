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
	<c:if test="${totalCount>=20 }">
		<h2 class="alert alert-info">
			여러분 드디어 회사라고 부를 수 있어졌습니다.. <b>총 ${totalCount }명</b>,,
		</h2>
		<button type="button" class="btn btn-danger btn-lg"
			onclick="location.href='form'">자신있다면 들어와.</button>
	</c:if>
	<c:if test="${totalCount<20 }">
		<h2 class="alert alert-danger">
			우리회사는 사원수가 <b>고작 ${totalCount }명</b> 뿐,,
		</h2>
		<button type="button" class="btn btn-warning btn-lg"
			onclick="location.href='form'">헐 입사해주시는 건가요?ㅠ</button>
	</c:if>
	
		<br>
		<br>

		<div style="width: 1000px; text-align: center">
			<form action="list" class="form-inline">
				<select name="title" class="form-control" style="width: 150px">
					<option value="name" ${title=='name'?"selected":""}>이름</option>
					<option value="buseo" ${title=='buseo'?"selected":""}>부서명</option>
					<option value="driver" ${title=='driver'?"selected":""}>운전면허</option>
				</select> <input type="text" name="search" class="form-control"
					placeholder="검색단어를 입력하세요" style="width: 300px" value="${search }">
				<button type="submit" class="btn btn-success">검색</button>
			</form>
		</div>

		<br>

		<table class="table table-bordered" style="width: 1000px">
			<tr>
				<th style="text-align: center" width="80">번호</th>
				<th style="text-align: center" width="100">이름</th>
				<th style="text-align: center" width="100">부서</th>
				<th style="text-align: center" width="150">사진</th>
				<th style="text-align: center" width="120">면허여부</th>
				<th style="text-align: center" width="150">입사일</th>
				<th style="text-align: center" width="250">비고</th>
			</tr>
			<c:forEach var="dto" items="${list }" varStatus="i">
				<tr style="text-align: center">
					<td style="vertical-align: middle">${i.count }</td>
					<td style="vertical-align: middle">${dto.name }</td>
					<td style="vertical-align: middle">${dto.buseo }</td>
					<td style="vertical-align: middle"><c:if
							test="${dto.photo == 'none image' }">none image</c:if> <c:if
							test="${dto.photo != 'none image' }">
							<img src="../photo/${dto.photo }" width="100">
						</c:if></td>
					<td style="vertical-align: middle">${dto.driver }</td>
					<td style="vertical-align: middle"><fmt:formatDate
							value="${dto.ipsaday }" pattern="yyyy-MM-dd HH:mm" /></td>
					<td style="vertical-align: middle"><button type="button"
							class="btn btn-info"
							onclick="location.href='updateform?num=${dto.num}'">정보수정</button>&nbsp;&nbsp;
						<button style="color: gray" type="button"
							class="btn btn-xs btn-default"
							onclick="location.href='delete?num=${dto.num}'">퇴,,사,,,?</button></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>