	<%@page import="dao.MemberDao"%>
<%@page import="java.util.Date"%>

<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	
		<% // 자바 로직 태그 
		request.setCharacterEncoding("UTF-8"); 
		
		String id = request.getParameter("id");
						// 전 페이지 form 안에 있는 name = id 인 변수 요청 
		 String password = request.getParameter("password");
						// 전 페이지 form 안에 있는 name = password 인 변수 요청 
		 String name = request.getParameter("name");
		 String gender = request.getParameter("gender");						
		 String birthyy = request.getParameter("birthyy");
		 String birthmm = request.getParameter("birthmm");
		 String birthdd = request.getParameter("birthdd");
		 
		 String birth = birthyy + "/" + birthmm + "/" + birthdd ;
		 				// 년 월 일 합쳐서 변수 넣기 
		 String email1 = request.getParameter("email1");
		 String email2 = request.getParameter("email2");
		 
		 String email = email1 + "@" + email2 ;
		 
		 String phone1 = request.getParameter("phone1");
		 String phone2 = request.getParameter("phone2");
		 String phone3 = request.getParameter("phone3");
		 
		 String phone = phone1 + "-" + phone2 + "-" + phone3 ;
		 
		 String address1 = request.getParameter("address1");
		 String address2 = request.getParameter("address2");
		 String address3 = request.getParameter("address3");
		 
		 String address = address1 + "-" + address2 + "-" + address3 ;
		 
		 MemberDto memberDto = new MemberDto();
		 
		 memberDto.setId(id);
		 memberDto.setPassword(password);
		 memberDto.setName(name);
		 memberDto.setGender(gender);
		 memberDto.setBirth(birth);
		 memberDto.setMail(email);
		 memberDto.setPhone(phone);
		 memberDto.setAddress(address);
		 		Date date = new Date();
		 memberDto.setRegist_day( date.toString());
		 
		 out.print( memberDto.toString());
		 //db 불러오기 
		 MemberDao dao = MemberDao.getinstance();
		 
		 int result = dao.signup(memberDto);
		 
		 if(result == 1) {
			 out.print("회원가입 성공");
		 }
		 if (result == -1) {
			 out.print("db오류");
		 }
		%>
	
	</body>
	</html>