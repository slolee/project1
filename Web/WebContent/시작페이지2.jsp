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

<p> ������ </p>
<% 
int count2 = 0;		// ���� ���𰡴�
public void �Լ�(){}; // �Լ� ���� �Ұ���

for (int i = 1; i<9; i++) {
	
	out.print( i + "x" + "=" + 2*i + "<br>");
}
%>


<p> �ð� </p>

<%= new java.util.Date() %>

</body>
</html>