<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="shortcut icon" type="image/x-icon"
	href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type=""
	href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
	color="#111" />
<link rel="canonical"
	href="https://codepen.io/ainarela/pen/XXZymN?limit=all&page=18&q=form" />

<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
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
			type : 'POST',
			url : 'idcheck.we',
			data : {
				"id" : $('#id').val()
			},
			success : function(data) {
				if ($.trim(data) == 0) {
					$('#idCheckMsg').html('사용가능한 아이디입니다.');
				} else {
					$('#idCheckMsg').html('중복된 아이디입니다.');
				}
			}
		});
	}

	function aa() {

		var a = document.join.member_pwd.value;
		var b = document.join.member_pwd2.value;

		var tel1 = document.join.member_phone1.value;
		var tel2 = document.join.member_phone2.value;
		var tel3 = document.join.member_phone3.value;

		var member_email1 = document.join.member_email1.value;
		var member_email2 = document.join.member_email2.value;

		for (i = 0; i < document.join.member_gender.length; i++) {
			window.alert(document.join.member_gender[i].value);
		}

		if (a == b) {
			/* document.join.memphone.value=tel1+tel2+tel3; */
			document.join.member_email.value = member_email1 + '@'
					+ member_email2;
			document.join.member_phone.value = tel1 + tel2 + tel3;

			var flag1 = 0;
			var flag2 = 0;
			var flag3 = 0;

			for (i = 0; i < a.length; i++) {
				msg = a.charCodeAt(i);
				if (48 <= msg && msg <= 57) {
					flag1 = 1;
				}
				if (65 <= msg && msg <= 90) {
					flag2 = 1;
				}
				if (97 <= msg && msg <= 122) {
					flag3 = 1;
				}
			}
			var flag4 = flag1 + flag2 + flag3;

			if (flag4 < 3) {
				window.alert('모두 비밀번호를 섞어주세요.');
			} else {
				join.submit();
			}

		} else {
			window.alert("비밀번호와 비밀번호 확인 값이 다릅니다.");

		}

	}

	function selectEmail() {
		if (document.join.member_email3.value != "0") {
			document.join.member_email2.value = document.join.member_email3.value;
			document.join.member_email2.readOnly = true;
		} else {
			document.join.member_email2.value = "";
			document.join.member_email2.readOnly = false;
		}

	}
</script>

<style class="cp-pen-styles">
@import url(https://fonts.googleapis.com/css?family=Raleway:300);

@import url(https://fonts.googleapis.com/css?family=Lusitana:400,700);

.align-center {
	text-align: center;
}

html {
	height: 100%;
}

body {
	height: 100%;
	position: relative;
}

.row {
	margin: -20px 0;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.row .col {
	padding: 0 20px;
	float: left;
	box-sizing: border-box;
}

.row .col.x-50 {
	width: 50%;
}

.row .col.x-100 {
	width: 100%;
}

.content-wrapper {
	min-height: 100%;
	position: relative;
}

.get-in-touch {
	max-width: 650px;
	margin: 0 auto;
	position: relative;
	top: 50%;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

.get-in-touch .title {
	text-align: center;
	font-family: Raleway, sans-serif;
	text-transform: uppercase;
	letter-spacing: 3px;
	font-size: 36px;
	line-height: 48px;
	padding-bottom: 48px;
}

.contact-form .form-field {
	position: relative;
	margin: 20px 0;
	display: inline-block;
}

.contact-form .input-text {
	display: block;
	width: 100%;
	height: 36px;
	border-width: 0 0 2px 0;
	border-color: pink;
	font-family: Lusitana, serif;
	font-size: 18px;
	line-height: 26px;
	font-weight: 400;
}

.contact-form .input-text:focus {
	outline: none;
}

.contact-form .input-text:focus+.label, .contact-form .input-text.not-empty+.label
	{
	-webkit-transform: translateY(-24px);
	transform: translateY(-24px);
}

.contact-form .label {
	position: absolute;
	left: 20px;
	bottom: 11px;
	font-family: Lusitana, serif;
	font-size: 18px;
	line-height: 26px;
	font-weight: 400;
	color: #888;
	cursor: text;
	-webkit-transition: -webkit-transform .2s ease-in-out;
	transition: -webkit-transform .2s ease-in-out;
	transition: transform .2s ease-in-out;
	transition: transform .2s ease-in-out, -webkit-transform .2s ease-in-out;
}

.contact-form .submit-btn {
	display: inline-block;
	background-color: #000;
	color: #fff;
	font-family: Raleway, sans-serif;
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: 16px;
	line-height: 24px;
	padding: 8px 16px;
	border: none;
	cursor: pointer;
}

.golbeng {
	margin: 33px 0;
	float: left;
	width: 15px;
	height: 15px;
}

.radio {
	float: left;
	margin: 30px 0px 0px 20px;
}
</style>
</head>
<body>
	<%@include file="/header.jsp"%>

		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="member_id" id="id"
					required=required> <input type="button" value="중복검사"
					onclick="show()"> <span id="idCheckMsg"></span></td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="member_pwd" required=required
					placeholder="영문 ·숫자 (8~12) 조합"></td>
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
				<td><input type="text" name="member_email1" required=required>
					@ <input type="text" name="member_email2" required=required>
				</td>
				<td><select name="member_email3" onchange="selectEmail()">
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
				</select><input type="hidden" name="member_email"></td>

			</tr>

			<tr>
				<th>성별</th>
				<td><input type="radio" name="member_gender" value="남자">남자
					<input type="radio" name="member_gender" value="여자">여자</td>
			</tr>

			<tr>
				<th>휴대폰</th>
				<td><select name="member_phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="017">010</option>
				</select>-<input type="text" name="member_phone2" required=required
					maxlength="4" size="4">-<input type="text"
					name="member_phone3" required=required maxlength="4" size="4">
					<input type="hidden" name="member_phone"></td>
			</tr>


			<tr>
				<td><input type="text" id="sample4_postcode"
					name="member_addrnum" placeholder="우편번호" required=required
					readonly="readonly"></td>
				<td><input type="button" onclick="sample4_execDaumPostcode()"
					value="우편번호 찾기"></td>
				<br>
				<td><input type="text" id="sample4_roadAddress"
					name="member_addrbasic" placeholder="도로명주소" required=required
					readonly="readonly"></td>
				<td><input type="text" id="sample4_jibunAddress"
					name="member_addrdetail1" placeholder="지번주소" required=required
					readonly="readonly"></td>
				<td><span id="guide" style="color: #999"></span></td>
				<td><input type="text" name="member_addrdetail2"
					placeholder="상세주소"></td>
			</tr>

			<tr>
				<th>자동 가입방지</th>
				<td class="g-recaptcha"
					data-sitekey="6LfaSTcUAAAAAEJRszvg9YzQ8HYAg22mny4DONka"></td>

			</tr>

			<tr>
				<td colspan="2" align="center"><input type="button"
					onclick="aa()" value="회원가입"></td>
			</tr>


		</table>
	</form>
	<script
		src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
	<script
		src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script>
		$('.js-input').keyup(function() {
			if ($(this).val()) {
				$(this).addClass('not-empty');
			} else {
				$(this).removeClass('not-empty');
			}
		});
		//# sourceURL=pen.js
	</script>
	<%@include file="/footer.jsp"%>
</body>
</html>