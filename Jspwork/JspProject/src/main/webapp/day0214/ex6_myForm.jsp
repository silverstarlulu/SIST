<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<form action="ex6_myAction.jsp" method="post">
		<table class="table table-bordered" style="width: 350px">
			<tr>
				<th width="100">지역선택</th>
				<td>
					<select size="1" name="city">
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="세종">세종</option>
						<option value="천안">천안</option>
						<option value="부산">부산</option>
					</select>
				</td>
			</tr>

			<tr>
				<th width="100">지역선택2</th>
				<td>
					<select size="7" name="city2" multiple="multiple" style="width: 100px">
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="세종">세종</option>
						<option value="천안">천안</option>
						<option value="부산">부산</option>
					</select>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>