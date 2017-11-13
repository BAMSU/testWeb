<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin-left:100px;
		margin-right:100px;
	}
	#left{
		float:left;
		width: 30%;
		background-color: yellow;
	}
	#right{
		float:right;
		width: 70%;
		background-color: red;
	}
	table.type03 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
  margin : 20px 10px;
}
table.type03 th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
table.type03 td {
    width: 250x;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script>
function ok(){
   var IMP = window.IMP; // 생략가능   
   IMP.init('imp55802002');  // 가맹점 식별 코드

   IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:예약결제',
    amount : 100,
    buyer_email : 'iamport@siot.we',
    buyer_name : '구매자이름',
    buyer_tel : '010-3043-2881',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
/*            msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num; */
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }

    alert(msg);
});
}
</script>

</head>
<body>
<script>
function gita(){
	var gita = document.getElementById("gita").checked;
	var tgita = document.getElementById("tgita");
	if(gita){
		tgita.disabled=false;
	}else{
		tgita.disabled=true;
	}
}
function show(){
	var price = document.all.price;
	var gita = document.getElementById("gita").checked;
	var tgita = document.getElementById("tgita");
	if(gita){
		tgita.disabled=false;
		var su=tgita.value;
		
	}else{
		var cnt = document.getElementById("cnt");
		var su = cnt.options[cnt.selectedIndex].value;
	}
	
	var ge= (${list.card_price}-(((su/100)*5))+5);
	
	price.innerHTML=ge;
	
	var total = document.all.total;
	total.innerHTML=ge*su;
}
</script>
<div id="left">
 <img src="card_img/${list.card_img}" width="200px" height="150px">
 <div>
 </div>
</div>
<div id="right">
	${list.card_name}
	<p id="price">${list.card_price}</p>
	
	<select id="cnt" onclick="show()" onchange="show()">
		<option>100</option>
		<option>200</option>
		<option>300</option>
		<option>500</option>
		<option>700</option>
		<option>1000</option>
		<option>1500</option>
	</select>
	<input type="checkbox" id="gita" onclick="show()"> <input type="text" id="tgita" onchange="show()">
	<p id="total"></p>
	<table class="type03">
    <tr>
        <th scope="row">주문자명</th>
        <td><input type="text"></td>
    </tr>
    <tr>
        <th scope="row">핸드폰 번호</th>
        <td><input type="text"></td>
    </tr>
    <tr>
        <th scope="row">주소</th>
        <td><input type="text" id="sample4_postcode" placeholder="우편번호"><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
        <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
<input type="text" id="sample4_jibunAddress" placeholder="지번주소"><span id="guide" style="color:#999"></span>
        </td>
    </tr>
</table>
</div>
<div id="env">
<img src="card_img/env.jpg" width="350px" height="300px">

<input type="radio" value="1번" name="envsel">
<input type="radio" value="2번" name="envsel">
<input type="radio" value="3번" name="envsel">
<input type="radio" value="4번" name="envsel">
수량 <input type="text" id="envsu">
</div>
<br>
<div>
부가 옵션 서비스
<br>
<input type="checkbox" value="1">로켓발송 <!-- +5000원 -->
<br>
<input type="checkbox" value="2">무료스티커
<br>
<input type="checkbox" value="3">주소라벨지
<p><img src="card_img/label.JPG" width="600px" height="300px"></p>
<select class="part1">
	<option>매수</option>
	<option>1권(420통 분량)</option>
	<option>2권(960통 분량)</option>
	<option>3권(1,440통 분량)</option>
	<option>4권(1,920통 분량)</option>
	<option>5권(2,400통 분량)</option>
</select>

<br>
<input type="checkbox" value="4">한지자켓봉투<!-- 장당 100원 추가 -->
<br>
<input type="checkbox" value="5">봉투삽입서비스 <!-- 장당 100원씩 추가 -->
<br>
</div>
<br><br>
	<form name="payMent" action="payMent.we">
		<h1>결제하기</h1>
   <input type="button" value="결제" onclick="ok()">
</form>
<br>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
</body>
</html>