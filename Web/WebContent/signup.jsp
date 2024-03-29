<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</head>
<body>
	<%@include file="menu.jsp" %>

	<%  
	if (logid != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		
		script.println(" alert('DB오류 [관리자 : 문의바랍니다 ]');");
		script.println(" history.back()");
		
		script.println("</script>");
	}
	%>
	<form action="signupController.jsp" method="post">
		<table>
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="id" placeholder="ID"> </td>
				<td> <button> 중복체크</button> </td>
			</tr>
			
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="password" placeholder="password"></td>
			</tr>
			
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="name" placeholder="name"></td>
			</tr>
			
			<tr>
				<td> 성별 </td>
				<td> <input type="radio" name="gender" value="남">남
				<input type="radio" name="gender" value="여">여</td>
			</tr>
			
			<tr>
				<td> 생년월일 </td>
				<td> <input type="text" name="birthyy">
				<input type="text" name="birthmm">
				<input type="text" name="birthdd"></td>
			</tr>
			
			<tr>
				<td> 이메일주소 </td>
				<td> <input type="text" name="email" placeholder="email1">@<select name="email2"> 
				<option> naver.com </option>
				<option> daum.net</option>
				<option>gmail.com</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<td> 연락처 </td>
				<td> <input type="text" name="phone1">
				<input type="text" name="phone2">
				<input type="text" name="phone3"></td>
			</tr>
			
			<tr>
				<td> 주소 </td>
				<td>
					<input type="text" id="sample6_postcode" placeholder="우편번호" name="address1">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" placeholder="주소" name="address2"><br>
			<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="address3">
			<input type="text" id="sample6_extraAddress" placeholder="참고항목">
			
			</td> </tr>
			
			<tr>
				<td> <input type="submit" value="등록"></td>
				<td> <input type="reset" value="취소"></td>
			</tr>
			
		</table>
	</form>

</body>
</html>