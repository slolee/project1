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
	<div class="container">		<!-- 가로 사이즈 12등분 --> 
		<div class = "col-sm-3"></div>
		<div class = "col-sm-6">
		<form action="loginController.jsp" method="post">
			<div class = "col-sm-7"> <!-- col-sm-12 : 홈페이지 가로 사이즈 12 등분 -->
			<div class="form-group row">
				<div>
					<input type="text" name="id" class="form-control" placeholder="회원 아이디" maxlength="20">
				</div>
				
				<div>
					<input type="password" name="password" class="form-control" placeholder="회원 비밀번호" maxlength="20">
				</div>
			</div>
			</div>
			
				<div class="col-sm-5">
					<button type="submit" class="btn btn btn-lg btn-success btn-block"> 로그인 </button>
				</div>
				<p>
				<div class="form-group row"></div>
		</form>
		</div>
	</div>
	<div class="col-sm-3"></div>
	</body>
	</html>