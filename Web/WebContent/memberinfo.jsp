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
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var addr = ''; // �ּ� ����
                var extraAddr = ''; // �����׸� ����

                //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    addr = data.roadAddress;
                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    addr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                    // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                    if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</head>
<body>
	<%@include file="menu.jsp" %>

	<form action="signupController.jsp" method="post">
		<table>
			<tr>
				<td> ���̵� </td>
				<td> <input type="text" name="id" placeholder="ID"> </td>
				<td> <button> �ߺ�üũ</button> </td>
			</tr>
			
			<tr>
				<td> ��й�ȣ </td>
				<td> <input type="text" name="password" placeholder="password"></td>
			</tr>
			
			<tr>
				<td> �̸� </td>
				<td> <input type="text" name="name" placeholder="name"></td>
			</tr>
			
			<tr>
				<td> ���� </td>
				<td> <input type="radio" name="gender" value="��">��
				<input type="radio" name="gender" value="��">��</td>
			</tr>
			
			<tr>
				<td> ������� </td>
				<td> <input type="text" name="birthyy">
				<input type="text" name="birthmm">
				<input type="text" name="birthdd"></td>
			</tr>
			
			<tr>
				<td> �̸����ּ� </td>
				<td> <input type="text" name="email" placeholder="email1">@<select name="email2"> 
				<option> naver.com </option>
				<option> daum.net</option>
				<option>gmail.com</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<td> ����ó </td>
				<td> <input type="text" name="phone1">
				<input type="text" name="phone2">
				<input type="text" name="phone3"></td>
			</tr>
			
			<tr>
				<td> �ּ� </td>
				<td>
					<input type="text" id="sample6_postcode" placeholder="�����ȣ" name="address1">
			<input type="button" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��"><br>
			<input type="text" id="sample6_address" placeholder="�ּ�" name="address2"><br>
			<input type="text" id="sample6_detailAddress" placeholder="���ּ�" name="address3">
			<input type="text" id="sample6_extraAddress" placeholder="�����׸�">
			
			</td> </tr>
			
			<tr>
				<td> <input type="submit" value="���"></td>
				<td> <input type="reset" value="���"></td>
			</tr>
			
		</table>
		
			<a href = "memberdeleteController.jsp"> ȸ��Ż�� </a>
			<a href = "memberModify.jsp"> ȸ���������� </a>
	
	</form>

</body>
</html>