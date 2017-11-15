<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 

<title>Insert title here</title>
</head>
<body>
<h2>itemDetailShoes</h2>
<c:if test="${empty dto}">
	<script type="text/javascript">
		window.alert('잘못된 접근입니다.');
		location.href='index.we';
	</script>		
</c:if>
<c:url var="consultUrl" value="consult.we">
	<c:param name="gubun" value="${dto.gubun}"></c:param>
	<c:param name="idx" value="${dto.shoes_idx}"></c:param>
</c:url>


<div class="jumbotron">
	<div align="center" style="float: left; padding-left: 10%; padding-right: 10%;" >
	<img src="${dto.shoes_thumbnail}" width="400" height="300" />
	</div>

	<div style="align-content: left; padding-left: 25%; margin: auto;" >
	  <h1 class="display-3">${dto.shoes_name}</h1>
	  	<p>상품명 : ${dto.shoes_name}<br>
	  	업체명 : ${dto.shoes_be}<br>
	  	주문가능 사이즈 : ${dto.shoes_size }<br>
	  	굽높이 조절 : ${dto.shoes_heel }<br>
	  	소재 : ${dto.shoes_material }<br>
	  	조회수 : ${dto.readnum}<br>
		상담수 : ${dto.consult }
		</p>
	  <p><a class="btn btn-primary btn-lg" href="${consultUrl }">상담신청하기</a></p>
	</div>
</div>

<img src="${dto.shoes_img}" width="400" height="300" />

</body>
</html>