	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	
	<p> JSP ��� </p>
	
	<p>*�׳� �Է��ϸ� HTML BODY ���� </p>
	<p> java�� �±� �� �ƴ� => �±׿� ���� ���� ���� �±� �ȿ��� ��� </p>
	<p> 1. ���� : ����, �޼ҵ� ����� </p> <% %>
	<p> 2. ��ũ��Ʈ�� : java ���� </p> <% %>
	<p> 3. ǥ���� : ��� ��� </p>
	
	<%! // �ڹ��ڵ�: ����, �޼ҵ常 ���� 
	int count = 3;
	String �ҹ��ں�ȯ (String ����) {
	
	return ����.toLowerCase();}
			%>
			
		<%
		for (int i=1; i<= count; i++) {
			
			out.println("java Server Pages" + i + ".<br>"); 
		}
		
		%>
	<p> java ��� 
	<%= �ҹ��ں�ȯ ("HELLO JSP") %>
	
	</body>
	</html>