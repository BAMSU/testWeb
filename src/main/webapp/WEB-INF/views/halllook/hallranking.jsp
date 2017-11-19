<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	border: 5px solid red;
	width: 100%;
	height: 600px;
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
}
.but{
text-align: center; 
margin-top: 15px; 
	color: #fff;
}
</style>
<body>
	<%@include file="/header.jsp"%>
	<h3 style="text-align: center;">홀 랭킹</h3>
	<div id="ranking">


		<div class="rank">
	
<c:set var="cnt" value="0"/>
				<table id="tr" border="1">
				
					<c:forEach var="dto" items="${hallrank}">
				
				<c:if test="${cnt%3==0 }">
				   <tr> 
		
				   </c:if>
				   <td class="ctd"><a href="rank_img"> <img
								src="/finalproject/img/hall/${dto.idx}/r1.jpg" alt="홀대표사진"
								style="width: 188px; height: 188px; float: left; margin-right: 10px;" />
						</a><br>
				  <span style="text-align: center;width: 200px;"> ${dto.name}</span>
				   <br>
				  <p class="but" border="1">
						<input type="button" style="background: #F5A9E1;" class="btn btn-secondary" value="홀 설명" onclick="location.href='hallInfo.we?idx=${dto.idx}'"/>
						<br>
						<input type="button" style="background: #F5A9E1;"class="btn btn-secondary" value="홀 통계보기" onclick="location.href='hallStats.we?idx=${dto.idx}&name=${dto.name}'"/>
						</p>
						</td>
				    
				
				    <c:set var="cnt" value="${cnt+1 }" />
				    <c:if test="${cnt%3==0 }">
</tr> 
</c:if>
				    </c:forEach>
				     </table>


		</div>
	</div>
	<%@include file="/footer.jsp"%>
</body>
</html>