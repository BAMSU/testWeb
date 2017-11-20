<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet"
	href="https://bootswatch.com/4/journal/bootstrap.css" />
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript">
$(document).ready(function(){
	$('.ctd:eq(0)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(0)').val();
	});
	$('.ctd:eq(1)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(1)').val();
	});
	$('.ctd:eq(2)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(2)').val();
	});
	$('.ctd:eq(3)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(3)').val();
	});
	$('.ctd:eq(4)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(4)').val();
	});
	$('.ctd:eq(5)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(5)').val();
	});
	$('.ctd:eq(6)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(6)').val();
	});
	$('.ctd:eq(7)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(7)').val();
	});
	$('.ctd:eq(8)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(8)').val();
	});
	$('.ctd:eq(9)').click(function(){
		location.href='hallInfo.we?idx='+$('.hallidx:eq(9)').val();
	});
	});

</script>
</head>
<style>

#ranking {
	text-align: center;
	display: inline-block;
	background-color: white;
	margin-left:450px;
		width: 950px;
}
span {
	float: left;
	width: 94px;
	font-size: 15px;
	line-height: 26px;
	cursor: pointer;
	height: 26px;
}
#tr {
	width: 100%;
	height: 100%;
}
.btn btn-secondary{

    color: #fff;
    border: 2px solid transparent !important;
    margin-top: 15px;
    
    width: 15px;
    height: 15px;   
}
.tag{
	background-position:  100px;
	width: 40px;
	height: 22px;
	position: absolute;
	background-color: #F78181;
	color: black;
}
</style>
<body>
	<%@include file="/header.jsp"%>
	<section style="background-color: gray;">
		<article>
	
		<p style="background-color: gray; height: 20px;margin: 0px; "></p>
		
		<div id="ranking">
<h3 style="text-align: center;">홀 랭킹</h3>

		<div class="rank">
	
<c:set var="cnt" value="0"/>
				<table id="tr" border="1px outset #ECE0F8;">
				
					<c:forEach var="dto" items="${hallrank}">
				
				<c:if test="${cnt%3==0 }">
				   <tr> 
		
				   </c:if>
				   <td class="ctd">
				   
				   <img
								src="/finalproject/img/hall/${dto.idx}/r1.jpg" alt="홀대표사진"
								style="width: 300px; height: 188px; margin-right: 10px;" />
					
						<div style="margin-top: 10px;"><p class="tag">${cnt+1 }위</p>
				  <span style="text-align: center;width:300px; font-size:20px;"> ${dto.name}</span></div>
				   <hr>
				  
				  <div style="text-align: center;">
						<input type="button" class="btn btn-secondary"style="background: #F5A9E1;margin-right: 10px;" value="홀 설명" onclick="location.href='hallInfo.we?idx=${dto.idx}'"/>
						
						<input type="button" class="btn btn-secondary"style="background: #F69D9D;" value="홀 통계보기" onclick="location.href='hallStats.we?idx=${dto.idx}&name=${dto.name}'"/>
						</div>
						</td>
				    
				
				    <c:set var="cnt" value="${cnt+1 }" />
				    <c:if test="${cnt%3==0 }">
</tr> 
</c:if>
				    </c:forEach>
				     </table>


		</div>
			</div>
			<p style="background-color: gray; height: 20px;margin: 0px; "></p>
			</article>
		</section>

	<%@include file="/footer.jsp"%>
</body>
</html>