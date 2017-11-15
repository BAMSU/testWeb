	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<br>
<div class="jumbotron">
<div align="center" style="float: left; padding-left: 10%; padding-right: 10%;">
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
	<br>
	<a href="#" id="buttonLeft">◀</a>
	<a href="#" id="buttonRight">▶</a>
</div>
<br>
<c:url var="consultUrl" value="consult.we">
	<c:param name="gubun" value="${dto.gubun}"></c:param>
	<c:param name="idx" value="${dto.sdmy_idx}"></c:param>
</c:url>
<br><br>
&nbsp;&nbsp;&nbsp;<div style="align-content: left; padding-left: 25%; margin: auto;" >
  <h1 class="display-3">${dto.sdmy_be}</h1>
  <p>	업체명 : ${dto.sdmy_be}<br>
  		평균이용금액 : ${dto.sdmy_avg } 만원<br>
  		조회수 : ${dto.readnum }<br>
  		상담수 : ${dto.consult }
  		
  </p>
  <p><a class="btn btn-primary btn-lg" href="${consultUrl}">상담신청하기</a></p>
<br><br>
<br><br>  
  </div>
</div>

<div class="jumbotron">
	<p>
	업체명 : ${bdto.be_name }<br>
	사업자등록번호 : ${bdto.be_license}<br>
	대표번호 : ${bdto.be_rep_tell}<br>
	소재지 : ${bdto.be_loc}<br>
	주차시설 : ${bdto.be_park}<br>
	</p>
</div>






</body>
</html>



















