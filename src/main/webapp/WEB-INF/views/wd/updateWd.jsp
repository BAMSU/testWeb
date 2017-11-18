<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fa5970f9e39f19d9b4f5c706aac8d7f9&libraries=services"></script>
<script>
function geo() {
	var geocoder = new daum.maps.services.Geocoder();
	var callback = function(result, status) {
	    if (status === daum.maps.services.Status.OK) {
	        document.fm.locationX.value=result[0].x;
	        document.fm.locationY.value=result[0].y;
	    }
	};
	geocoder.addressSearch(document.getElementById('sample4_roadAddress').value, callback);
}
function geocut() {
	
	var apple = document.getElementById('sample4_roadAddress').value;
	var pen = apple.split(' ');
	var msg = '';
	for(var i = 2; i < pen.length; i++) {
		
		if(i>2) {
			msg = msg + " ";
		}
		msg = msg+pen[i];
	}
	
	
	var fineapple = document.getElementById('sample4_jibunAddress').value;
	var pen2 = fineapple.split(' ');
	var msg2 = '';
	for(var i = 0; i < pen.length-1; i++) {
		
		if(i==0) {
			document.fm.si.value=pen2[i];
		}else if(i==1) {
			document.fm.gu.value=pen2[i];
		}else if(i==2) {
			document.fm.dong.value=pen2[i];
		} else {
			msg2 = msg2 + pen2[i];
		}
	}
	
	document.fm.addr.value = msg2;
	
	document.fm.roadAddr.value=msg;
}
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
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
						geo();
						geocut();
						
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
	
	
function info() {
	var si = document.fm.si.value;
	var gu = document.fm.gu.value;
	var dong = document.fm.dong.value;
	var addr = document.fm.addr.value;
	var roadAddr = document.fm.roadAddr.value;
	
	document.getElementById('sample4_roadAddress').value = si + " " + gu + " " + roadAddr;
	document.getElementById('sample4_jibunAddress').value = si + " " + gu + " " + dong + " "+ addr;
	
}
</script>
</head>
<body onload = "info()">
<%@include file="/adminheader.jsp"%>
<form name="fm" action="update2.we">
홀 이름 : <input type="text" name="name" value="${list.name}" required><br>
홀 타입 : <input type="text" name="hallType" value="${list.hallType}" required><br>
식사 가격 : <input type="text" name="mealCost" value="${list.mealCost}" required><br>
식사 타입 : <input type="text" name="menuType" value="${list.menuType}" required><br>
손님 : <input type="text" name="guest" value="${list.guest}" required><br>
한줄 성명 : <textarea name = "ckPoint" required>${list.ckPoint}</textarea><br>
오시는 길 : <input type="text" name="traffic" value="${list.traffic}" required><br>
호선 : <input type="text" name="line" value="${list.line}" required><br>
역 이름 : <input type="text" name="station" value="${list.station}" required><br>

				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" required>
				<br>
				<input type="text" id="sample4_roadAddress" readOnly required>
				<input type="text" id="sample4_jibunAddress" readOnly required>
				<span id="guide" style="color: #999"></span>
				<input type="hidden" name="locationY" value="${list.locationY}" required>
				<input type="hidden" name="locationX" value="${list.locationX}" required>
				<input type="hidden" name="si" value="${list.si}" required>
				<input type="hidden" name="gu" value="${list.gu}" required>
				<input type="hidden" name="dong" value="${list.dong}" required>
				<input type="hidden" name="addr" value="${list.addr}" required>
				<input type="hidden" name="roadAddr" value="${list.roadAddr}" required>
				<input type="hidden" name="grade" value="${list.grade}" required>
				<input type="hidden" name="accrue" value="${list.accrue}" required>
				<input type="hidden" name="idx" value="${list.idx}" required>
				<input type="submit" value="웨딩홀수정">
				</form>
</body>
</html>