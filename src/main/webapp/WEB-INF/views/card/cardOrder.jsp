<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<%@include file="/header.jsp" %>
<style>
	section{
		margin-left:100px;
		margin-right:100px;
	}
	#left{
		float:left;
		width: 40%;
	}
	#right{
		float:right;
		width: 60%;
	}
	
#first th{
	text-align: center;
	border-bottom: 2px solid #F69D9D;
}
#second th{
	border-bottom: 2px solid #F69D9D;
	border-top: 2px solid #F69D9D;
	border-right: 2px solid #F69D9D;
}
#second td{

	border-bottom: 2px solid #F69D9D;
	border-top: 2px solid #F69D9D;
}
#thd th{
	margin-right:50px;
	background-color: gray;
	width: 5%;
	border-bottom:4px solid #FFF;
	text-align: center;
}
#thd td{
	padding-left: 30px;
	border-bottom: 2px solid #000;
}
#thd{
	height: 700px;
}
#sub{
	size: 20px;
	text-decoration: blink;
}
#nsub{
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


</head>
<body onload="show()">
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
function inputval(){
	var sname;
	'${sname}'==null?sname="":sname='${sname}';
	document.getElementById("o_code").value= ${idx};
	document.getElementById("o_id").value=sname;
	document.getElementById("o_name").value=sname;
	document.getElementById("o_phone").value=document.getElementById("phone").value;
	document.getElementById("o_addr").value="(" + document.getElementById('sample4_postcode').value + ") " + document.getElementById('sample4_roadAddress').value
	+" " + document.getElementById('sample4_jibunAddress').value + document.getElementById('sample4_sangAddress').value
	document.getElementById("o_memo").value= document.getElementById("memo").value;
	document.getElementById("o_img").value = '${filename}';
}
function show(){
	var price = document.all.price;
	var ssale=document.all.sale;
	var gita = document.getElementById("gita").checked;
	var tgita = document.getElementById("tgita");
	if(gita){
		tgita.disabled=false;
		var su=tgita.value;
		
	}else{
		var cnt = document.getElementById("cnt");
		var su = cnt.options[cnt.selectedIndex].value;
	}
	
	var ge= ${list.card_price}; //개당가격
	var sale=(((su/100)*5))+5; //할인율
	ssale.innerHTML=sale+"원";
	var mal = ge-sale; //물품가격
	
	var cucu = 0; //추가가격
	var opti = ""; //옵션 db저장값
	 
	var rocat = document.getElementById("bal").checked; //로켓발송 
	var suti = document.getElementById("su").checked; //무료스티커 
	var label = document.getElementById("label").checked; //주소라벨지
	var han = document.getElementById("hanji").checked; //한지자켓봉투
	var envplu = document.getElementById("envp").checked; //봉투삽입서비스
	
	var lt = document.getElementById("part1");
	var lbcnt = parseInt(lt.options[lt.selectedIndex].value); //주소라벨지 가격(1:4000 / 2:8000 / 3:13000 / 4:16000 / 5:19000)
	
	if(rocat){
		cucu+=5000;
		opti +='로켓발송\n';
	}
	if(suti){
		opti +='무료스티커\n';
	}
	if(label){
		cucu+= lbcnt;
		opti +='주소라벨지\n';
	}
	if(han){
		cucu+= (su*100);
		opti +='한지자켓봉투\n';
	}
	if(envplu){
		cucu+= (su*100);
		opti +='봉투삽입서비스\n';
	}
	
	var envtype = $("input[type=radio][name=envsel]:checked").val(); //봉투 타입
	var envcnt = document.getElementById("envsu").value; //봉투 수량
	//if{
		
	//}
	
	var ttprice=(mal*su)+cucu;
	
	price.innerHTML=mal + "원";
	
	var total = document.all.total;
	total.innerHTML=ttprice;
	document.getElementById("o_id").value = envcnt; //o_id는 봉투 수량로 바꿧음
	document.getElementById("o_count").value = su;
	document.getElementById("o_sale").value = sale;
	document.getElementById("o_plus").value = cucu;
	document.getElementById("o_price").value = mal;
	document.getElementById("o_env").value=envtype; //얘는 봉투 종류
	document.getElementById("o_option").value=opti;
	document.getElementById("totalprice").value = ttprice; //o_price 
}
function ok(){
	var total =  parseInt(document.getElementById("totalprice").value);
	if (confirm("모든 항목을 정확히 작성하셨습니까?") == true){    //확인
		var IMP = window.IMP; // 생략가능   
		   IMP.init('imp55802002');  // 가맹점 식별 코드

		   IMP.request_pay({
		    pg : 'html5_inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '청첩장 결재',
		    amount : total,
		    buyer_email : 'iamport@siot.we',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-9800-5375',
		    buyer_addr : '서울특별시 강남구',
		    buyer_postcode : '123-456'
		}, function(rsp) {
		    if ( rsp.success ) {
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
	}else{
	   return;
	}
function myp(){
	if (confirm("주문이 완료되었습니다. 모바일용 QR코드를 만드시겠습니까?") == true){  
		location.href="mycard.we?filename=${filename}.png";
		
} else{
	location.href="index.we";
	}
}
}

</script>
<br><br>
<section>
<h4><font style="color: red;"><strong>기본주문</strong></font> 정보</h4>
<hr>
<div id="top" style="text-align:center; height: 200px; vertical-align: center;">
<div id="ltop" style="width: 30%; float: left;">
	<img src="card_img/${list.card_img}" width="260px" height="200px">
</div>
	
<div id="rtop" style="width: 60%; float:right; text-align: center;"><br><br>
<table id="first" width="600px" height="100px" style="text-align: center;">
<tr>
	<th>카드번호</th>
	<th>정가</th>
	<th>수량</th>
	<th>할인금액</th>
	<th>소비자가</th>
</tr>
<tr>
	<td><font style="size:300px; color:red;"><strong>${list.card_name}</strong></font></td>
	<td>${list.card_price}원</td>
	<td><select id="cnt" onclick="show()" onchange="show()" style="width: 70px; height: 30px;">
		<option>100</option>
		<option>200</option>
		<option>300</option>
		<option>500</option>
		<option>700</option>
		<option>1000</option>
		<option>1500</option>
	</select>
	<input type="hidden" id="gita" onclick="show()"> <input type="hidden" id="tgita" onchange="show()">
	</td>
	<td><p id="sale"></td>
	<td><p id="price"></p></td>
	</tr>
	</table>
</div>
</div>
<br><br><br>
<h4><font style="color: red;"><strong>카드주문</strong></font> 정보</h4>
<hr>
<div style="width: 100%; height: 500px;">
	<div id="left" style="width:30%; float: left;">
	 <br>
	 <p style="margin-left: 100px;">[Card Make Img]</p><br><br>
	 <img src="order_img/${filename}.png" style="width: 300px;">
	</div>

	<div id="right" style=" width: 70%; float: right;">
		<input type="hidden" id="totalprice"><br><br><br><br><br><br>
		<table id="second" style="float: right; margin-right: 50px; width: 600px; height: 300px;">
	    <tr>
	        <th>주문자명</th>
	        <td><input type="text" id="name" class="text" value="${sname }" readonly></td>
	    </tr>
	    <tr>
	        <th>핸드폰 번호</th>
	        <td><input type="text" id="phone" class="text" onchange="inputval()"></td>
	    </tr>
	    <tr>
	        <th>주소</th>
	        <td>
	        <input type="text" id="sample4_postcode" placeholder="우편번호" onchange="inputval()"><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
	        <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소"><br>
			<input type="text" id="sample4_sangAddress" placeholder="상세주소" onchange="inputval()"><span id="guide" style="color:#999"></span>
	        </td>
	    </tr>
	    <tr>
	    	<th>메모</th>
	    	<td><textarea rows="3" cols="40" id="memo" onchange="inputval()"></textarea></td>
	    </tr>
	</table>
	</div>
</div>
<br>
<br><br>


<h4><font style="color: red;"><strong>봉투</strong></font> 서비스</h4>
<hr>
<div id="env" style="width: 100%; float: center; text-align: center;">
<img src="card_img/env.jpg" width="350px" height="300px"style="margin-right: 180px;">
<div ><br><br>
<input type="radio" value="1번" name="envsel"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" value="2번" name="envsel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" value="3번" name="envsel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" value="4번" name="envsel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
수량 <input type="text" id="envsu" style="width: 80px;"  onchange="show()" >
</div>
</div>
<br><br>
<div>
<h4><font style="color: red;"><strong>부가 옵션</strong></font> 서비스</h4>
<hr>
<div style="width: 100%">
<table id="thd" style="margin-left: 100px;">
	<tr>
		<th><input type="checkbox" id="bal" ></th>
		<td><p id="sub">로켓발송</p>
		<p id="nsub">일정이 급하신 분들을 위해 준비한 당일출고 서비스입니다. 최단시간에 특별 제작해 드립니다.</p>
		</td>
	<tr>
	<tr>
		<th><input type="checkbox" id="su" ></th>
		<td><p id="sub">무료스티커</p>
		<p id="nsub">청첩장을 주문한 수량만큼 기본스티커는 무료배송됩니다</p>
		</td>
	<tr>
	<tr>
		<th><input type="checkbox" id="label" ></th>
		<td><p id="sub">주소라벨지</p>
		<p id="nsub">봉투 부착용 주소라벨지를 특별할인가로 드립니다.</p>
		<p><img src="card_img/label.JPG" width="600px" height="300px">
				<select id="part1">
					<option>매수</option>
					<option value='4000'>1권(420통 분량)</option>
					<option value='8500'>2권(960통 분량)</option>
					<option value='13000'>3권(1,440통 분량)</option>
					<option value='16000'>4권(1,920통 분량)</option>
					<option value='19000'>5권(2,400통 분량)</option>
				</select>
		</p>
		</td>
	<tr>
	<tr>
		<th><input type="checkbox" id="hanji" ></th>
		<td><p id="sub">한지자켓봉투</p>
		<p id="nsub">고급한지자켓봉투로 교체합니다. (유료서비스 장당 100원)</p>
		</td>
	<tr>
	<tr>
		<th><input type="checkbox" id = "envp"></th>
		<td><p id="sub">봉투삽입서비스</p>
		<p id="nsub">카드를 일일이 봉투에 넣으실 필요없이 서비스를 이용하시면 본사에서 대행해 드립니다.(유료서비스 장당 100원)</p>
		</td>
	<tr>
</table></div>
<br>

<br>
</div>

<form id="cOrder" action="priceOrder.we" style="text-align: right;">
		<input type="hidden" id="o_id" name="o_id">
		<input type="hidden" id="o_code" name="o_code">
		<input type="hidden" id="o_name"  name="o_name">
		<input type="hidden" id="o_phone" name="o_phone">
		<input type="hidden" id="o_addr" name="o_addr">
		<input type="hidden" id="o_memo" name="o_memo">
		<input type="hidden" id="o_env" name="o_env">
		<input type="hidden" id="o_option" name="o_option">
		<input type="hidden" id="o_count" name="o_count">
		<input type="hidden" id="o_sale" name="o_sale">
		<input type="hidden" id="o_plus" name="o_plus">
		<input type="hidden" id="o_price" name="o_price">
		<input type="hidden" id="o_img" name="o_img">
		<input type="button" class="btn btn-primary" value="결재" onclick="ok()"> &nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" class="btn btn-primary" value="다음">
	</form>
<br>
<p id="total"></p></td>
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
</section>
</body>
<%@include file="/footer.jsp" %>
</html>