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
<style type="text/css">
body {
	font-family: 'Gaegu', cursive;
}

table {
	font-size: 1.2em;
}
</style>
<body>

	<div style="margin: 30px">
		<table class="table table-bordered" style="width: 800px">
			<caption>
				<b>답변형 게시판</b> 
				<c:if test="${sessionScope.loginOk!=null }">
					<span style="float: right">
						<button type="button" class="btn btn-default"
							onclick="location.href='form'">글쓰기</button></span>
				</c:if>
			</caption>

			<tr bgcolor="F3E8FF" align="center">
				<th width="60" style="text-align: center"><b>번호</b></th>
				<th width="150" style="text-align: center"><b>제목</b></th>
				<th width="100" style="text-align: center"><b>작성자</b></th>
				<th width="100" style="text-align: center"><b>작성일</b></th>
				<th width="60" style="text-align: center"><b>조회수</b></th>
			</tr>

			<c:if test="${totalCount==0 }">
				<tr>
					<td colspan="5" align="center"><b>등록된 게시글이 없습니다.</b></td>
				</tr>
			</c:if>

			<c:if test="${totalCount>0 }">
				<c:forEach var="dto" items="${list }">
					<tr align="center">
						<td>${no }</td>
						<c:set var="no" value="${no-1 }"></c:set>

						<!-- 제목 -->
						<td style="text-align: left">
							<!-- relevel 만큼 공백 --> 
							<c:forEach begin="1" end="${dto.relevel }">
								&nbsp;&nbsp;	<!-- 2칸 띄기, 원글일경우는 0, 반복문 돌지 x -->
							</c:forEach> 
							<!-- 답글이면 re이미지 출력 --> 
							<c:if test="${dto.relevel>0 }">
								<img src="../photo/re.png">
							</c:if> <!-- 제목 눌러서 내용보기로 --> 
							<a href="content?num=${dto.num }&currentPage=${currentPage}">${dto.subject }</a>

							<!-- 이미지가 있을 경우 아이콘 표시 --> 
							<c:if test="${dto.photo!=null }">
								<span class="glyphicon glyphicon-picture"></span>
							</c:if>
						</td>

						<td>${dto.id }</td>
						<td><fmt:formatDate value="${dto.writeday }"
								pattern="yy-MM-dd HH:mm" /></td>
						<td>${dto.readcount }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		
		<br>
		
		<!-- 검색 -->
		<div class="searcharea" style="width: 800px; align="center">
			<form action="list">
				<div class="form-inline">
					<select class="form-control" style="width: 100px" name="searchColumn">
						<option value="subject">제목</option>
						<option value="id">작성자</option>
						<option value="content">내용</option>
					</select>
					&nbsp;&nbsp;
					<input class="form-control" name="searchWord" style="width: 400px" placeholder="키워드를 입력해주세요">
					&nbsp;
					<button type="submit" class="btn btn-info">검색</button>
				</div>
			</form>
		</div>

		<!-- 페이징 -->
		<div style="width: 800px; text-align: center;">
			<ul class="pagination">

				<!-- 이전 -->
				<c:if test="${startPage > 1 }">
					<li><a href="list?currentPage=${startPage - 1 }">이전</a></li>
				</c:if>
				<c:forEach var="pp" begin="${startPage }" end="${endPage }">

					<c:if test="${pp == currentPage }">
						<li class="active"><a href="list?currentPage=${pp }">${pp }</a></li>
					</c:if>
					<c:if test="${pp != currentPage }">
						<li><a href="list?currentPage=${pp }">${pp }</a></li>
					</c:if>

				</c:forEach>

				<!-- 다음 -->
				<c:if test="${endPage < totalPage }">
					<li><a href="list?currentPage=${endPage + 1 }">다음</a></li>
				</c:if>

			</ul>
		</div>

	</div>
</body>
</html>