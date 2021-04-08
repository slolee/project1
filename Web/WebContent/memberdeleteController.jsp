	<%@page import="java.io.PrintWriter"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	
	<%
	String logid = (String )session.getAttribute("user");
	
	MemberDao dao = MemberDao.getinstance();
	
	int result = dao.delete(logid);
	
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
		script.println(" alert('회원탈퇴했습니다');");
		script.println(" location.href='logout.jsp'");
		
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
		script.println(" alert('DB오류 [관리자 : 문의바랍니다 ]');");
		script.println(" location.href='main.jsp'");
		
		script.println("</script>");
		
	}
	
	

	
	
	
	
	
	
	
	
	
	%>
	
	</body>
	</html>