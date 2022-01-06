<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>  
    
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String passwordDelForm = request.getParameter("passwordDelForm");
	
	GuestbookDao guestbookDao = new GuestbookDao();
	
	GuestbookVo gvo = guestbookDao.getGuest(no);
	
	if(passwordDelForm.equals(gvo.getPassword())) {
		System.out.println("비밀번호가 일치합니다.");
		
		guestbookDao.deleteGuest(no);
	} else {
		System.out.println("비밀번호가 틀립니다.");
	}
	
	response.sendRedirect("./addList.jsp");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	delete 페이지입니다.
</body>
</html>