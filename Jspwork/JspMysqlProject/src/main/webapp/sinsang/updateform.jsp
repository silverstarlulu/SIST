<%@page import="java.util.StringTokenizer"%>
<%@page import="sinsang.model.SinsangDto"%>
<%@page import="sinsang.model.SinsangDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Nanum+Pen+Script&family=Noto+Serif+KR&family=Poor+Story&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
	function goFocus(hp) {
		if (hp.value.length == 4)
			frm.hp3.focus();
	}
</script>
</head>
<%
String num = request.getParameter("num");
SinsangDao dao = new SinsangDao();
SinsangDto dto = dao.getData(num);
%>
<body>
	<form action="updateaction.jsp" method="post" name="frm">
		<input type="hidden" name="num" value="<%=num%>">
		<table class="table table-bordered" style="width: 350px">
			<caption>
				<h4>
					<b><%=dto.getName()%></b>님 정보수정
				</h4>
			</caption>
			<tr>
				<th width="100" bgcolor="lightgray">이름</th>
				<td>
					<input type="text" name="name" placeholder="이름" required="required" size="6" value="<%=dto.getName()%>">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="lightgray">혈액형</th>
				<td>
					<select name="blood" size="1">
						<%
						String[] str = { "A", "B", "O", "AB" };

						for (int i = 0; i < str.length; i++) {
							if (dto.getBlood().equalsIgnoreCase(str[i])) {
							%>
							<option value="<%=str[i]%>" selected="selected"><%=str[i]%>형</option>
							<%
							} else {
							%>
							<option value="<%=str[i]%>"><%=str[i]%>형</option>
							<%
							}
						}
						%>
					</select>
				</td>
			</tr>
			<tr>
			<%
			//하이픈
			StringTokenizer st=new StringTokenizer(dto.getHp(),"-");
			String hp1=st.nextToken();
			String hp2=st.nextToken();
			String hp3=st.nextToken();
			%>
				<th width="100" bgcolor="lightgray">핸드폰</th>
				<td>
					<select name="hp1" size="1">
					<%
					String [] strHp={"010","02","031","041"};
					for(int i=0;i<strHp.length;i++){
						if(hp1.equals(strHp[i])){
							%>
							<option value="<%=strHp[i]%>" selected="selected"><%=strHp[i] %></option>
							<%
						}else{
							%>
							<option value="<%=strHp[i]%>"><%=strHp[i] %></option>
							<%
						}
					}
					%>
					</select>
					<b>-</b>
					<input type="text" name="hp2" size="3" required="required" onkeyup="goFocus(this)" value="<%=hp2%>">
					<b>-</b>
					<input type="text" name="hp3" size="3" required="required" value="<%=hp3%>">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="lightgray">생년월일</th>
				<td>
					<input type="date" name="birth" required="required" value="<%=dto.getBirth()%>">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="DB수정" class="btn btn-success">
					<input type="button" value="취소" class="btn btn-info" onclick="history.back()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>