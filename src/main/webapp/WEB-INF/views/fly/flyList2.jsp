<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<style>

table{
margin: 0px auto;
}
#div_t{
	
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
#airline{
	color:#848484;
}
#ad_t{
 width: 600px;
}
#kintob{
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
<section id="sect" >

<div id="ad" align="center" >
<div id="kintob"><a href="https://kr.koreanair.com/content/koreanair/korea/ko/detailDiscountTicket.html#step2"><img alt="" 
src="honeyimg/kintob.jpg" height="315"></a>
<br>김포 ↔ 베이징 / KoreanAir Ads 
</div>
<div id="asiana_ad"><iframe width="560" height="315" src="https://www.youtube.com/embed/h0xQ02U_Rs8" frameborder="0" allowfullscreen></iframe><br>
Asiana Ads / S.H.O.W. M.E. L.A.</div>
<div id="ajcar"><img alt="" width="400" height="315" src="honeyimg/ajcar.jpg">
<br><a style="color:#848484;"href="www.ajrentacar.co.kr">www.ajrentacar.co.kr</a></div>
</div>

<div id="div_t">
<div id="p_tag" style="width:65%; text-align:center;">
<font style=" font-size: 45px;">
<b>국제선은 도착공항의 정보를 제공하지 않습니다.</b></font></div>
<br>
<table border="1"><tr>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;"><img id="icon"alt="airline" src="honeyimg/airline.png"> 항공사</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;"><img id="icon"alt="s_airport" src="honeyimg/s_airport2.png"> 출발 공항</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;"><img id="icon"alt="a_airport" src="honeyimg/a_airport2.png">도착 공항</th>
<th style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;"><img id="icon"alt="s_time" src="honeyimg/s_time.png"> 출발 시간</th>

</tr>
   <c:forEach var="list" items="${s_fly}">
   <tr>
   <td id="" style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
    ${list.airLineKorean }</td>
   <td id="" style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
    ${list.airport}</td>
   <td id="" style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
    ${list.city }</td>
   <td id="" style="padding: 10px;  border: 1px solid #D5D5D5; height:30px;">
    ${list.internationalTime }</td>
   </tr>
   </c:forEach>
   </table>
   
   </div>
   </section>
   
   
   <div id="ad2" align="center" style="text-align: center">

<a><img alt="" src="honeyimg/soonung.jpg" ></a><br><br>
<font style="font-size: 11px;">
<hr>
<p align="center"><font style="font-size: 30px;"><b>이벤트 안내</b></font></p>
<hr>
<table id="ad_t"><tr>
<th width="150" height="50">· 응모기간</th><td> 2017. 11. 13. (월) ~ 2017.11.22.(수)</td><tr>
<th width="150" height="50">· 대상 </th><td>2018년도 수능 수험생, 수험생 자녀가 있는 부모님</td></tr><tr>
<th width="150" height="50">· 당첨자발표</th><td> 2017.11.24.(금) 홈페이지 당첨자 게시판 <a href="http://flyasiana.com/CW/ko/eventAnnounce/eventAnnounceList.do">[바로가기]</a></td></tr><tr>
<th width="150" height="50" style="vertical-align: top;">· 참여방법</th><td> ① 8가지 힐링 선물 중에 하나를 <b>선택</b>한다.<br>
		② 힐링 선물을 함께 하고픈 친구들/사람들과의 사연을 <b>댓글로 응모</b>한다.
		</td></tr>
		</table>
		</font>


</div>
   <hr>
	<%@include file="/footer.jsp" %>
</body>
</html>