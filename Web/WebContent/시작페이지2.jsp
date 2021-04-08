<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%! int count = 0;  %>

<title>Insert title here</title>
</head>
<body>
<%
 out.print(++count);

%>

<%=count %>

<p> 구구단 </p>
<% 
int count2 = 0;		// 변수 선언가능
public void 함수(){}; // 함수 선언 불가능

for (int i = 1; i<9; i++) {
	
	out.print( i + "x" + "=" + 2*i + "<br>");
}
%>


<p> 시간 </p>

<%= new java.util.Date() %>

</body>
</html>