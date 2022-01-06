<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>  
<%@ page import="java.util.List" %>
 
<%
	GuestbookDao guestbookDao = new GuestbookDao();	
	List<GuestbookVo> list = guestbookDao.getList();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./add.jsp" method="get">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="text" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" style="width: 30rem"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	</br>
	
	<%
	for(int i = 0; i < list.size(); i++) {
	%>
		<table border="1">
			<tr>
				<td><%= list.get(i).getNo()%></td>
				<td><%= list.get(i).getName() %></td>
				<td><%= list.get(i).getRegDate() %></td>
				<td><a href="./deleteForm.jsp?no=<%= list.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><textarea style="width:30rem"><%= list.get(i).getContent() %></textarea></td>
			</tr>
		</table>
		</br>
	<%
	}
	%>
</body>
</html>