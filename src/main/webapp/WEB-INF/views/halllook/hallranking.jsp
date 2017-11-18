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
#search {
	text-align: center;
	display: inline-block;
	margin-left: 150px;
	margin-right: 230px;
	border: 5px solid red;
	padding: 100px;
	width: 1000px;
	height: 1240px;
}

li {
	display: inline-block;
	margin-right: 5px;
}

#menu_box {
	float: left;
	display: block;
	border: 5px solid red;
	width: 150px;
	height: 100px;
	padding-top: 300px;
}

.menu_br {
	display: inline-block;
	border: 5px solid red;
	margin: 0 auto;
}

#menu {
	float: left;
	margin-right: 5px;
	word-break: break-all;
}

.rank {
	width:100px;
	height: 30px;
	border: 10px solid yellows;
} 

</style>
<body>
	<%@include file="/header.jsp"%>
	<h3>홀 랭킹 리스트</h3>
	<div id="search">
		<div id="#menu_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.we">웨딩홀 검색</a></li>
					<li><a href="hallranking.we">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallsearchlist.we">불러오기확인</a></li>
					<li><a href="hallestimate.we">홀 견적내기</a></li>
					<li><a href="hallmode.we">견적 작성</a></li>
					<li><a href="hallranking.we">랭킹</a></li>

				</ul>
			</div>
		</div>

		<div class="rank">
			<form name="frm">
				<c:set var="cnt" value="0" />
				<ul>
				<c:forEach var="dto" items="${hallrank}">
				<li>
				
					<c:if test="${cnt%3==0}">
					<li>
					</c:if>
					

						<ul>
							<c:set var="cnt" value="${cnt+1}" />
							<li>
								<div class="raname">
									<ul>
										<li><a href="rank_img"> <img
												src="/finalproject/img/hall/${dto.idx}/r1.jpg" alt="홀대표사진"
												style="width: 188px; height: 188px; float: left; margin-right: 10px;" />
										</a></li>
									</ul>
								</div>



								<div class="raname2">
									<ul>
										<li>${dto.name}</li>

										<li><span
											style="border: 2px solid transparent !important; background: #F69D9D; color: #fff; border-radius: 6px;"
											onclick="window.alert('hallInfo${dto.idx }.we')">상세보기</span></li>
										<li><span
											style="border: 1px solid #BCA9F5; border-radius: 6px;"
											onclick="window.alert('hallCompare.we')">홀 통계보기</span></li>
									</ul>
								</div>
							</li>
						</ul>

						<div class="raname3">
							<ul>
								<c:if test="${cnt%3==0}">
									<li></li>

								</c:if>
							</ul>
						</div>
						</li>
					
				</c:forEach>
				</ul>
			</form>
		</div>
	</div>
	<%@include file="/footer.jsp"%>
</body>
</html>