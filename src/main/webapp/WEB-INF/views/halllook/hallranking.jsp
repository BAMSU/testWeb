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
	
</script>
</head>
<style>
#ranking {
	text-align: center;
	display: inline-block;
	border: 5px solid red;
	padding: 100px;
	width: 1200px;
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
	width: 400px;
}
</style>
<body>
	<%@include file="/header.jsp"%>
	<h3>홀 랭킹 리스트</h3>
	<div id="ranking">


		<div class="rank">
			<form name="frm">
				<c:set var="cnt" value="0" />
				<table id="tr">
					<c:forEach var="dto" items="${hallrank}">

						<td><c:set var="cnt" value="${cnt+1}" /></td>
						<td><a href="rank_img"> <img
								src="/finalproject/img/hall/${dto.idx}/r1.jpg" alt="홀대표사진"
								style="width: 188px; height: 188px; float: left; margin-right: 10px;" />
						</a></td>
						<td>${dto.name}</td>
						<td><span
							style="border: 2px solid transparent !important; background: #F69D9D; color: #fff; border-radius: 6px;"
							onclick="window.alert('hallInfo${dto.idx }.we')">상세보기</span></td>
						<td><span
							style="border: 1px solid #BCA9F5; border-radius: 6px;"
							onclick="window.alert('hallCompare.we')">홀 통계보기</span></td>

						<c:if test="${cnt%3==0}">
							</tr>
						</c:if>
					</c:forEach>
					<c:if test="${cnt%3==0}">
						<tr>
					</c:if>


				</table>
			</form>
		</div>
	</div>
	<%@include file="/footer.jsp"%>
</body>
</html>