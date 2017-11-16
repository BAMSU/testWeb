<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';

						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
	function FormSubmit() {
		if (grecaptcha.getResponse() == "") {
			window.alert("리캡챠를 체크해야 합니다.");
			return false;
		} else {
			return true;
		}
	}
</script>

<script>
	function show() {
		 $.ajax({
             type: 'POST',
             url: 'idcheck.we',
             data: {
                 "id" : $('#id').val()
             },
             success: function(data){
                 if($.trim(data) == 0){
                     $('#idCheckMsg').html('사용가능한 아이디입니다.');
                 }
                 else{
                     $('#idCheckMsg').html('중복된 아이디입니다.');
                 }
             }
         });    
	}

	
function aa(){
		
		var a = document.join.member_pwd.value;
		var b = document.join.member_pwd2.value;
		
		var tel1 = document.join.member_phone1.value;
		var tel2 = document.join.member_phone2.value;
		var tel3 = document.join.member_phone3.value;
		
		var member_email1= document.join.member_email1.value;
		var member_email2 = document.join.member_email2.value;
		
		

		
		for(i=0;i<document.join.member_gender.length;i++){
			window.alert(document.join.member_gender[i].value);
		}
		
		
		if(a == b){
			/* document.join.memphone.value=tel1+tel2+tel3; */
			 document.join.member_email.value=member_email1 + '@' + member_email2; 
			 document.join.member_phone.value=tel1 + tel2 + tel3;
			window.alert('aaaa');
			join.submit();
		}else{
			window.alert("비밀번호와 비밀번호 확인 값이 다릅니다.");

			
		}
		
		
		}
		
function selectEmail() {
	if(document.join.member_email3.value!="0") {
		document.join.member_email2.value = document.join.member_email3.value;
		document.join.member_email2.readOnly = true;
	} else {
		document.join.member_email2.value = "";
		document.join.member_email2.readOnly = false;
	}
	
	
	
}


</script>

</head>
<body>
<%@include file="/header.jsp" %>
	
	<form action="memberJoin.we" name="join" method="POST">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="member_id"  id ="id" required=required> <input type="button"
					value="중복검사" onclick="show()"> <span id="idCheckMsg"></span>
				</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="member_pwd" required=required placeholder="영문 ·숫자 (8~12) 조합"></td>
			</tr>

			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="member_pwd2" required=required></td>
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" name="member_name" required=required></td>
			</tr>

			<tr>
				<th>이메일</th>
				<td><input type="text" name="member_email1" required=required> @
				<input type="text" name="member_email2" required=required> </td>
				<td><select name="member_email3" onchange="selectEmail()">
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
				</select><input type="hidden" name="member_email"></td>

			</tr>

			<tr>
				<th>성별</th>
				<td><input type="radio" name="member_gender" value="남자">남자 <input
					type="radio" name="member_gender" value="여자">여자</td>
			</tr>

			<tr>
				<th>휴대폰</th>
				<td><select name="member_phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="017">010</option>
				</select>-<input type="text" name="member_phone2" required=required maxlength="4" size="4">-<input type="text"
					name="member_phone3" required=required maxlength="4" size="4">
					<input type="hidden" name="member_phone"></td>
			</tr>


			<tr>
				<td><input type="text" id="sample4_postcode" name = "member_addrnum" placeholder="우편번호" required=required  readonly="readonly"></td>
				<td><input type="button" onclick="sample4_execDaumPostcode()"
					value="우편번호 찾기"></td>
				<br>
				<td><input type="text" id="sample4_roadAddress" name = "member_addrbasic"
					placeholder="도로명주소" required=required readonly="readonly"></td>
				<td><input type="text" id="sample4_jibunAddress" name = "member_addrdetail1"
					placeholder="지번주소" required=required readonly="readonly"></td>
				<td><span id="guide" style="color: #999"></span></td>
				<td><input type="text" name="member_addrdetail2" placeholder="상세주소"></td>
			</tr>

			<tr>
				<th>자동 가입방지</th>
				<td class="g-recaptcha"
					data-sitekey="6LfaSTcUAAAAAEJRszvg9YzQ8HYAg22mny4DONka"></td>

			</tr>

			<tr>
				<td colspan="2" align="center"><input type="button" onclick="aa()"
					value="회원가입"></td>
			</tr>


		</table>
	</form>
	<%@include file="/footer.jsp" %>
</body>
</html>