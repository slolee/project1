	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	<%@ include file="menu.jsp" %>
	<div class="container">		<!-- ���� ������ 12��� --> 
		<div class = "col-sm-3"></div>
		<div class = "col-sm-6">
		<form action="loginController.jsp" method="post">
			<div class = "col-sm-7"> <!-- col-sm-12 : Ȩ������ ���� ������ 12 ��� -->
			<div class="form-group row">
				<div>
					<input type="text" name="id" class="form-control" placeholder="ȸ�� ���̵�" maxlength="20">
				</div>
				
				<div>
					<input type="password" name="password" class="form-control" placeholder="ȸ�� ��й�ȣ" maxlength="20">
				</div>
			</div>
			</div>
			
				<div class="col-sm-5">
					<button type="submit" class="btn btn btn-lg btn-success btn-block"> �α��� </button>
				</div>
				<p>
				<div class="form-group row"></div>
		</form>
		</div>
	</div>
	<div class="col-sm-3"></div>
	</body>
	</html>