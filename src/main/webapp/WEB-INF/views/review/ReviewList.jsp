<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Montez"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/style.css">
<style>
img{
	width: 50px;
}
body{
	margin: 0px auto;

}
.detailbox {
	width:450px;
	height:auto;
	overflow:hidden;
	

}

.detailbar table {
	width:440px;
	height:auto;
	overflow:hidden;
	margin:0 auto;
	
}
</style>

<body >
<%@include file="/header.jsp"%>
<h2 align="center">HALL REVIEW </h2>
<hr>


<table cellspacing="0" width="400px;" align="center" >


	
	<tfoot>
		<tr>
			<td colspan="5" align="center">${pageStr}</td>
			
		</tr>
	</tfoot>
	<tbody>
		<c:if test="${empty list}">
			<tr>
				<td colspan="5" align="center">등록된 개시글이 없습니다.</td>
				
			</tr>
		</c:if>
			<c:forEach var="dtoa" items="${list }" >
			<tr><td>
		  <div id="wrap"  style="width:600px; margin:auto; height: 200px;"  >
		  
		 	
	 
				   <div id="left_main" style="height:200px; width:100px;
					margin-right:50px; float:left; ">
	   
					<img src="/myweb/hall/${dtoa.room_idx}/r1.jpg" style="width: 180px;;height: 180px" />
				   </div>
				   <div id="right_main"  style="height:200px; width:400px;  float:left; margin-left: 50px;">
						
						<div>홀 이름: ${dtoa.name}</div>
						<hr>
						<div>방문일 : ${dtoa.writedate} | 작성자 : ${dtoa.writer }</div>
						<div><input type="text" value="${dtoa.content}" readonly="readonly" style="height: 100px; width: 380px;"></div>
						
						평점 : 
				 	<c:if test="${dtoa.average==1 }">
					<img src="/finalproject/img/star1.png" >
				</c:if>
				<c:if test="${dtoa.average==1.5 }">
					<img src="/finalproject/img/star1.png" >
				</c:if>
				<c:if test="${dtoa.average==2}">
					<img src="/finalproject/img/star2.png" >
				</c:if>
				<c:if test="${dtoa.average==2.5}">
					<img src="/finalproject/img/star2.png" >
				</c:if>
				<c:if test="${dtoa.average==3}">
					<img src="/finalproject/img/star3.png" >
				</c:if>
				<c:if test="${dtoa.average==3.5}">
					<img src="/finalproject/img/star3.png" >
				</c:if>
				<c:if test="${dtoa.average==4 }" >
					<img src="/finalproject/img/star4.png">
				</c:if>
				<c:if test="${dtoa.average==4.5 }">
					<img src="/finalproject/img/star4.png" >
				</c:if>
				<c:if test="${dtoa.average==5}">
					<img src="/finalproject/img/star5.png">
				</c:if> ${dtoa.average}
				
				<c:url var="reviewContentUrl" value="reviewContent.we">
						<c:param name="idx" >${dtoa.room_idx}</c:param>
						<c:param name="idx2" >${dtoa.review_idx}</c:param>
  			    </c:url>
			
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;<a href="${reviewContentUrl} "><input class="btn btn-primary btn-sm" type="button" value="리뷰상세보기"></a>
					 </div>
				   	  
				 </div>
				 <tr>
				 <td><hr></td>
				 </tr>
			 
				
 			
 		  </c:forEach>
 		
		
		
	</tbody>
</table>
<%@include file="/footer.jsp"%>
</body>
</html>