<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

	<!-- �ܺ����� css �������� [��Ʈ��Ʈ��] -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- ����̽� ũ�⿡ ���� ũ�� ���� [��Ʈ��Ʈ��]  -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- �ܺ����� js �������� [��Ʈ��Ʈ��]  -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- �ܺ����� jquery �������� [��Ʈ��Ʈ��] -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>	
	<script src="js/bootstrap.js"></script>
	
	<style type ="text/css">
	
	.container{
	width: 1000px;
	}
	#myCarousel{
	width: 1000px;
	}
	</style>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@include file="menu.jsp" %>
	<!-- ĳ���� ��� �ϱ� [ �����̵� ���� ]  -->
	
<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
													<%// ������ �Ѿ�� �ð� : �и��� %>
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			
			<div class="carousel-inner">	<%// ���� ÷�� %>
				<div class="item active">
					<img alt="" src="image/������.jpg">
				</div>
				
				<div class="item">
					<img alt="" src="image/������.jpg">
				</div>
				
				<div class="item">
					<img alt="" src="image/����.jpg">
				</div>
			</div>
			
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
	<%
		for( int i = 0; i<10; i++) {
			%>
			<img alt="" src="image/������.jpg" width="300px">
			<img alt="" src="image/������.jpg" width="300px">
			<img alt="" src="image/����.jpg" width="300px">
			<%
		}
	
	
	%>



		
		
		
</body>
</html>