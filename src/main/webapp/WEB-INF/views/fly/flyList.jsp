<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
<head>
<meta  charset="UTF-8">
<title>Love is staying</title>
<style>

table{
margin: 0px auto;
}
#div_t{
	width:50%;
}
#sect{
height:900px;

}
#icon{
width:50px;
}
#head{
font-size: x-small;
}
#p_tag{
margin: 0px auto;
width:60%;
}
#td1{
	background-color: #FFA7A7;
}
#airline{
	color:#848484;
}
#ad{
width: 1300px;
margin: 0px auto;
padding: 0px;
border-collapse: collapse;
border-spacing: 0px;
}
#ad2{
width: 1100px;
margin: 0px auto;

}
#in_to_sevu{
float: left;
border-spacing: 0px;
border-collapse: collapse;
margin: 0px;
}
#asiana_ad{
float: left;
border-collapse: collapse;
border-spacing: 0px;	
}
#ajcar{
float: left;
border-collapse: collapse;
border-spacing: 0px;

}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
<hr>
<br>
<section id="sect">

<div id="ad" align="center" >
<div id="in_to_sevu"><a href="https://kr.koreanair.com/content/koreanair/korea/ko/detailDiscountTicket.html#step2"><img alt="" src="honeyimg/itos.jpg" height="315"></a>
<br>인천 ↔ 세부 / KoreanAir Ads 
</div>
<div id="asiana_ad"><iframe  width="560" height="315" src="https://www.youtube.com/embed/b4hNhDgCSuU" frameborder="0" allowfullscreen></iframe><br>
Asiana Ads / FRANKFURT TOP PICK</div>
<div id="ajcar"><img alt="" width="450" height="315" src="honeyimg/ajcar.jpg">
<br><a style="color:#848484;"href="www.ajrentacar.co.kr">www.ajrentacar.co.kr</a></div>
</div>
<div id="div_t" style="float:left;">
<div id="p_tag" ><font style="font-size: 45px;">
<b>출발 공항</b> <img id="icon"alt="arrow" src="honeyimg/arrows.png"> <b>도착 공항</b></font></div>
<br>
<table border="1"><tr>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon" alt="airline" src="honeyimg/airline.png"> 
<font id="head">항공사</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="s_airport" src="honeyimg/s_airport.png">
<font id="head">출발 공항</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon" alt="a_airport" src="honeyimg/a_airport.png">
<font id="head">도착 공항</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="s_time" src="honeyimg/s_time.png">
<font id="head">출발 시간</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="a_time" src="honeyimg/a_time.png">
<font id="head">도착 시간</font></th>
</tr>
   <c:forEach var="list" items="${s_fly}">
   <tr >
   
   <c:if test="${list.airLineKorean == '이스타항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline" href="www.eastarjet.com">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '에어부산' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="https://www.airbusan.com">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '아시아나항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="http://flyasiana.com">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '대한항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="https://kr.koreanair.com">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '제주항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.jejuair.net">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '진에어' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.jinair.com">${list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${list.airLineKorean == '티웨이항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.twayair.com">${list.airLineKorean }</a></td>
   </c:if>
   
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${list.startcity }</td>
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${list.arrivalcity }</td>
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${list.domesticStartTime }</td>
   <td id=" " style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${list.domesticArrivalTime }</td>
   </tr>
   </c:forEach>
   
</table>
</div>


<div id="div_t" style="float:right; ">

<div id="p_tag" style="width:60%;"><font style="font-size: 45px;"><b>도착 공항</b>  <img id="icon"alt="arrow" src="honeyimg/arrows.png"> <b>출발 공항</b></font></div>
<br>
<table border="1">
<tr>
 <th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon" alt="airline" src="honeyimg/airline.png"> 
<font id="head">항공사</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="s_airport" src="honeyimg/s_airport.png">
<font id="head">출발 공항</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon" alt="a_airport" src="honeyimg/a_airport.png">
<font id="head">도착 공항</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="s_time" src="honeyimg/s_time.png">
<font id="head">출발 시간</font>
</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
<img id ="icon"alt="a_time" src="honeyimg/a_time.png">
<font id="head">도착 시간</font></th>
</tr>
   <c:forEach var="a_list" items="${a_fly}">
   <tr>
   <c:if test="${a_list.airLineKorean == '이스타항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.eastarjet.com">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '에어부산' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="https://www.airbusan.com">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '아시아나항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="http://flyasiana.com">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '대한항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="https://kr.koreanair.com">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '제주항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.jejuair.net">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '진에어' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.jinair.com">${a_list.airLineKorean }</a></td>
   </c:if>
   <c:if test="${a_list.airLineKorean == '티웨이항공' }">
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
   <a id="airline"href="www.twayair.com">${a_list.airLineKorean }</a></td>
   </c:if>
   
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${a_list.startcity }</td>
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${a_list.arrivalcity }</td>
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${a_list.domesticStartTime }</td>
   <td id=" "style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">${a_list.domesticArrivalTime }</td>
   </tr>
   </c:forEach>
</table>


</div>



</section>

<div id="ad2" align="center" style="text-align: left">
    <font style="font-size: 30px;">아고다 (<a href="www.agoda.com">www.agoda.com</a>)</font><br>
    <br>
    <font style="font-size:15px;">아고다가 제공하는 국내와 해외의 ★초특가★ 호텔
(전 세계 <font style="color:purple;"><b>100만</b></font> 여개 호텔, 
<font style="color:purple;"><b>900만</b></font> 이상의 고객 리뷰, 
<font style="color:purple;"><b>최대 80% 할인 최저 가격</b></font> 보장)</font><br><br>
<a><img alt="" src="honeyimg/agoda.png" ></a><br><br>
<font style="font-size: 11px;">● 아고다 고객센터 : 02-6022-2443<br>
●  상담은 365일 가능하며, 이미 생성된 예약에 한해 제공되는 서비스입니다. (예약전 상담 불가)<br>
●  한국어 상담시간 : 평일 10:00 – 18:00, 주말 10:00 – 13:00 (한국시간 기준) / (영어 상담은 24시간 제공됩니다.)<br>
●  이메일 : krservice@agoda.com<br>
● 아고다 고객센터로 연결이 원활하지 않을 경우에는 상기 이메일로 문의 주시기 바랍니다.</font>
<br>
<a href="https://www.agoda.com/ko-kr/jejuairpromo?cid=1645089">
&nbsp;&nbsp;<button type="button" class="btn btn-info">
<font style="color:#FFFFFF">실시간 호텔 예약</font></button></a>

</div>
<hr>
<%@include file="/footer.jsp" %>	
</body>

</html>