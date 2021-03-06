	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
	<script type="text/javascript" src="becss/slider/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="becss/slider/epiloum_slider.js"></script>
<style type="text/css">
		.ul {
			overflow: hidden;
			position: relative;			
			width: 480px;
			height: 360px;
			margin: 0;
			padding: 0;
			list-style-type: none;
		}
		a{
		text-decoration: none;
		}
</style>
<script type="text/javascript">
		$(document).ready(function(){
			var slider = new EpiloumSlider('#slider', 480);

			$('#buttonLeft').bind('click', function(){
				slider.left();
			});
			$('#buttonRight').bind('click', function(){
				slider.right();
			});
			$('#button1').bind('click', function(){
				slider.pos(0);
			});
			$('#button2').bind('click', function(){
				slider.pos(1);
			});
			$('#button3').bind('click', function(){
				slider.pos(2);
			});
			$('#button4').bind('click', function(){
				slider.pos(3);
			});
			$('#button5').bind('click', function(){
				slider.pos(4);
			});
			$('#button6').bind('click', function(){
				slider.pos(5);
			});
			$('#button7').bind('click', function(){
				slider.pos(6);
			});
			$('#button8').bind('click', function(){
				slider.pos(7);
			});
		});
	</script>

</head>
<body>
<%@include file="/header.jsp" %>


<c:if test="${empty dto}">
	<script type="text/javascript">
		window.alert('잘못된 접근입니다.');
		location.href='index.we';
	</script>		
</c:if>
<div class="jumbotron">
<div id="item_detail" style=" width:85%; margin:auto;">

<div align="center" style="float: left; padding-left: 10%; padding-right: 10%;">
<div id="imgs" style="border: width:fit-content; ">
<ul id="slider" class="ul">
		<li><img src="${dto.sdmy_img1}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img2}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img3}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img4}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img5}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img6}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img7}" width="480" height="380" /></li>
		<li><img src="${dto.sdmy_img8}" width="480" height="380" /></li>
	</ul><br>
	
	<a href="#" id="button1"><img src="${dto.sdmy_img1}" width="50" height="40"/></a>
	<a href="#" id="button2"><img src="${dto.sdmy_img2}" width="50" height="40"/></a>
	<a href="#" id="button3"><img src="${dto.sdmy_img3}" width="50" height="40"/></a>
	<a href="#" id="button4"><img src="${dto.sdmy_img4}" width="50" height="40"/></a>
	<a href="#" id="button5"><img src="${dto.sdmy_img5}" width="50" height="40"/></a>
	<a href="#" id="button6"><img src="${dto.sdmy_img6}" width="50" height="40"/></a>
	<a href="#" id="button7"><img src="${dto.sdmy_img7}" width="50" height="40"/></a>
	<a href="#" id="button8"><img src="${dto.sdmy_img8}" width="50" height="40"/></a>
	<br><br>
	<a href="#" id="buttonLeft" style="position: relative; top:-250px; left:-40%;">
		<button type="button" class="btn btn-primary">◀</button>
		</a>
	<a href="#" id="buttonRight" style="position: relative; bottom:250px; right:-40%;">
		<button type="button" class="btn btn-primary">▶</button>
		</a>
		
	<!-- <div style="border: width:fit-content; position: absolute;
	 left: 15%; top:40% ;">
		<a href="#" id="buttonLeft">
		<button type="button" class="btn btn-primary">◀</button>
		</a>
	</div>
	<div style="border: width:fit-content; position: absolute;
	 right: 37%; top:40% ;">
		<a href="#" id="buttonRight">
		<button type="button" class="btn btn-primary">▶</button>
		</a>
	</div> -->
</div>
<br>
<c:url var="consultUrl" value="consult.we">
	<c:param name="gubun" value="${dto.gubun}"></c:param>
	<c:param name="idx" value="${dto.sdmy_idx}"></c:param>
</c:url>
</div>
<br><br>
&nbsp;&nbsp;&nbsp;
<div style="align-content: left; padding-left: 25%; margin: auto;" >
  <h1 class="display-3">${dto.sdmy_be}</h1>
  <p>	
  		평균이용금액 : ${dto.sdmy_avg } 만원<br>
  		조회수 : ${dto.readnum }<br>
  		상담수 : ${dto.consult }
  </p>
  <p><a class="btn btn-primary btn-lg" href="${consultUrl}">상담신청하기</a></p>
	<br><br>
 
  </div>
</div>
	<br><br><br><br>
	
	<div style="width:85%;margin:auto;">
	<div style="width:100%;height:2px;border:2px solid pink;"></div>
	<br>
	<h2>	업체 관련 정보</h2>
	<br><br>
	</div>
	
  <div style="border:1px solid pink; width:85%; margin:auto; background: white;
   border-radius: 5px; padding: 10px; vertical-align: middle;">
	<p style="padding-left: 10%; padding-top: 5%;">
	업체명 : ${bdto.be_name }<br>
	사업자등록번호 : ${bdto.be_license}<br>
	대표번호 : ${bdto.be_rep_tell}<br>
	소재지 : ${bdto.be_loc}<br>
	주차시설 : ${bdto.be_park}<br>
	</p>
	</div>
</div>







<%@include file="/footer.jsp" %>
</body>
</html>



















