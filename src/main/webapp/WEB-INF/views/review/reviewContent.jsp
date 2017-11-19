<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>


<script src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<script>
/*
		rolling page by hong..
*/
var leftCt = 0;
	$(function(){
		$("#album").attr("top", "0");
		imgStart("R");
	});
	function imgStart(tp){
		clearInterval($("#imgList").attr("timer"));
		if(tp == "R"){ // 오른쪽 이동
			imgRight();
			$("#imgList").attr("timer", setInterval("imgRight()", 2000)); // 멈춰있는 시간
		}else{ // 왼쪽이동
			if(leftCt == 0){
				var leng = $("#imgList div").size();
				$("#imgList").css("left",parseInt($("#imgList div").eq(0).width()*-1));
				$("#imgList>div").eq(parseInt(leng-1)).clone().prependTo($("#imgList"));
				$("#imgList>div").eq(leng).remove();
				leftCt = 1;
			}
			imgLeft();
			$("#imgList").attr("timer", setInterval("imgLeft()", 3000));
		}
	}
	function imgRight(){
		$("#imgList").animate({
			left : parseInt($("#imgList div").eq(0).width() * -1)
		},300,function(){
			$("#imgList").css("left", "0px");
			$("#imgList>div").eq(0).clone().appendTo($("#imgList"));
			$("#imgList>div").eq(0).remove();
		});
	}
	function imgLeft(){
		var leng = $("#imgList div").size();
		$("#imgList").animate({
			left : 0
		},300,function(){
			$("#imgList").css("left", "0px");
			$("#imgList").css("left",parseInt($("#imgList div").eq(0).width()*-1));
			$("#imgList>div").eq(parseInt(leng-1)).clone().prependTo($("#imgList"));
			$("#imgList>div").eq(leng).remove();
		});
	}
</script>
<style>
/*
	이미지 사이즈 맞춰서 수정해주세요... (#viewArea)
*/
#viewArea {position:relative; width:300px; height:200px;overflow:hidden;}
#imgList {position:absolute; width:2000px; left:0px; top:0px;}
#imgList div {float:left; margin:0px; padding:0px;}
body {
     margin:0 auto;

}
</style>


</head>
<body align="center">
<%@include file="/header.jsp" %>
<hr style="width: 600px;">
<h4 style="text-align: center;">${hallInfo.name}</h4>
<hr style="width: 600px;">
			
		  <div id="wrap"  style="width:600px; margin:auto; height: 1000px;"  >
		  	<div id="header_main" style="float:  ">
		  	</div>
		  
				   <div id="left_main" style="height:180px; width:100px;
					margin-right:50px; float:left; text-align: left;">
	   
					<img src="/myweb/hall/${dto.room_idx}/r1.jpg" style="width: 180px;height: 180px; " />
				   </div>
				   <div id="right_main"  style="height:200px; width:400px;  float:left; margin-left: 50px; text-align: left;">
						
						<div>홀   이름 : ${hallInfo.name}</div>
						<div>메     뉴 : ${hallInfo.menuType}</div>
						<div>보증인원 : ${hallInfo.guest} </div>
						<div>식사비용 : ${hallInfo.mealCost}</div>
						<hr>
						
						<div>체크포인트</div>
						<div>${hallInfo.ckPoint}</div>  	  
					 
					</div> 
					<div id="bottom_main" style="height: 500px; width:600px; float:none; clear: both; margin-bottom: 100%;  text-align: left; ">
					<hr>
					<div>방문일 : ${dto.writedate} | 글쓴이 : ${dto.writer} <div style="text-align: right;">평점 : ${dto.average}</div> </div>
					<table>
					 	<tr>
					 		<td><img src="/myweb/hall/icon.jpg" style="width: 80px; height: 80px;"></td>
					 		<td>  <input type="text" value="${dto.content}" readonly="readonly" style="width: 500px; height: 100px; text-align: justify;"></td>
					 	</tr>
					 	<tr>
					 	<td colspan="2"><hr></td>
					 	</tr>
					 </table>
					 <br><br>
					 <table  align="center" >
					 <tr><td style="width:15%">
					 
					   	<span onClick="imgStart('L')"><img src="/myweb/hall/arrow_red.png" style="width: 50px;height: 30px;"></span>
						</td>
						<td style="width:70%">
					 	<div id="viewArea"  >
									
							<div id="imgList" >
								<div><img src="/myweb/hall/${dto.room_idx}/r1.jpg" style="width: 300px;height: 200px; "></div>
								<div><img src="/myweb/hall/${dto.room_idx}/r2.jpg" style="width: 300px;height: 200px; "></div>
								<div><img src="/myweb/hall/${dto.room_idx}/r3.jpg" style="width: 300px;height: 200px; "></div>
								<div><img src="/myweb/hall/${dto.room_idx}/r4.jpg" style="width: 300px;height: 200px; "></div>
								<div><img src="/myweb/hall/${dto.room_idx}/r5.jpg" style="width: 300px;height: 200px; "></div>
							</div>
						</div>
						</td>
						<td style="width:15%;">	
					
							<span onClick="imgStart('R')" ><img src="/myweb/hall/arrow_red - r.png"  style="width: 50px;height: 30px;"></span> 
						

						</td>
						</tr>
						</table>
						<br>
						<table align="center">
						<tr>
						 	<td><a href="AllhallList.we"><input class="btn btn-secondary" type="button" value="목록으로"></a>
						 		<c:url var="consultMainUrl" value="consult.we">
									<c:param name="idx" >${dto.room_idx}</c:param>
									<c:param name="gubun" >1</c:param>
								</c:url>
						 		<a href="${consultMainUrl }"><input class="btn btn-primary" type="button" value="상담신청"></a>
						 	</td>
						</tr> 
						<tr>
							<hr>
						</tr>
					 	</table>
					 	
					</div>
				</div>
			
			
				
 			

<%@include file="/footer.jsp" %>
</body>
</html>