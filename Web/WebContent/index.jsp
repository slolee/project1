	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<!DOCTYPE html>
	<html>
	<head>
	<!-- �ܺ����� css�� �������� -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- ����̽� ũ�⿡ ���� ũ�� ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--  �ܺ����� js �������� [��Ʈ��Ʈ��]�� -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
		<nav class="narbar navbar-default">
			<div class = "container" >
			
				<div class = "navbar-hedder">
				
					<a class = "navbar-brand" href= "index.jsp" > ���� ���θ� </a>
				</div>
			
			
			</div>
		
		
		
		</nav>
		
		<%! String ���� = "�ȳ��ϼ��� ��Ʈ��Ʈ�� ���θ�";
		
			String ������ = "�ȳ��ϼ��� �����θ� �Դϴ�";
			
		%>
	
		<div class = "jumbotron">
		<div class="container">
		<h1 class = "display-3">
		<%= ���� %>
		</h1>
		</div>
		</div>
		
		<div class = "container" >
		<div class = "text-center">
		<h3>
		<%= ������ %>	
		</h3><%
		for (int i=0; i<5; i++) {
			%>
			<img alt="" src="image/������.jpg" width="100" >
		<%	
		}// ��
		 
		
		%>
	
		</div>
		</div>
		
		<footer class = "cantainer" >
		<p> &copy; �����θ� </p>
		</footer>
	</body>
	</html>