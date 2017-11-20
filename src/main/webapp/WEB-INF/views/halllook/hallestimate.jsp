<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
section{
	background: gray;
	width: 100%;
}
#est{
	text-align:center;
	margin: 0 auto;
	background: white;
	width: 1000px;
	height: 100%;
}

#estr{
	text-align: center;
	margin: 0 auto;
}
.des1{
	margin: 0 auto;
	
}
.ta1{
    border-bottom: 1px solid #f0f0f0;
}
.estlist{
	width:690px;
	height:500px;
    border: 1px solid #dadcdd;
    margin-left: -1000px;
}
.the{
	box-sizing: border-box;
	display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
    font-family: 'Hanna';
}
th{
	width: 100px;
}
.name{
	margin: 0 auto;
}
</style>
</head>
<body> 	
<%@include file="/header.jsp" %>
<section>
<article>
<p style="background-color: gray; height: 20px;margin: 0px; "></p>
<div id="est">

	
	<c:set var="em" value="${hallview}"/>
	<br>
	<label style="text-align: center; font-size: 30px;">홀 견적내기</label>
<br>
	<div class="des1">
<table class="name">
	
		<tr>
			<th style="font-size: 25px;list-style: none;text-align: center;">${em.name }</th>
			</tr>
			
			<tr>
			<th style="list-style: none;">
			<a href="">
			<img src="/finalproject/img/hall/${em.idx}/r1.jpg" alt="홀대표사진" style=" width: 300px; height: 270px;float: left;
			margin-right: 20px;"/>
			<input type="hidden" value="${em.idx}" class="hallview"/>
			</a>
			</th>
		</tr>
	</table>
		<div class="tabl1" style="width: 600px;margin:0 auto;text-align: center;">
		<br>
		<table class="ta1" style="text-align:center;margin:0 auto;border:2px solid #F8E0F7;">
		<tr>
			<th style="background: #FFD9EC;border-bottom: 1px solid #4c545b;border-top: 1px solid #4c545b;text-align: center;">식사비용 </th>
			<td>${em.mealCost }</td>
			<th style="text-align: center;border:1px dotted #EAEAEA;background: #FFD9FA;border-bottom: 1px solid #4c545b;border-top: 1px solid #4c545b;">웨딩홀명</th>
						<td>${em.name}</td>
		</tr>
		<tr>
			<th style="background: #FFD9EC;border-bottom: 1px solid #4c545b;text-align: center;">메뉴종류</th>
			<td>${em.menuType }</td>
			<th style="text-align: center;border:1px dotted #EAEAEA;background: #FFD9FA;border-bottom: 1px solid #4c545b;border-top: 1px solid #4c545b;">선택 홀</th>
						<td>${em.hallType}</td>
		</tr>
		<tr>
			<th style="background: #FFD9EC;text-align: center;">보증인원 </th>
			<td>${em.guest}</td>
			<th style="text-align: center;border:1px dotted #EAEAEA;background: #FFD9FA;border-bottom: 1px solid #4c545b;border-top: 1px solid #4c545b;">하객수</th>
						<td>${em.guest}</td>
			
			</tr>
			</table>
			
				<a href="chatting/chattingMain.we"><button type="button" class="btn btn-primary">상담신청</button></a>
				</div>
					</div>
				<p>본 견적은 웨딩홀에서 제공한 가격 정보를 단순 계산한 견적으로 실제 견적과의 차이가 있을 수 있습니다.</p>
				<br>
<form name="estmode" action="hallmode.we">
<c:set var="es" value="${hallestList}"/>
				<table border="2" style="margin: 0 auto;">
				<tr>
					<td colspan="3"style="border:1px dotted #EAEAEA;background: #FFD9FA;border-bottom: 1px solid #4c545b;border-top: 1px solid #4c545b;">${es.hall_name }</td>
					<td colspan="3">${es.hall_idx}홀
					
					<!-- ------------------------------------------------ -->
					</td>
					</tr>
					<tr>
					<td colspan="3"style="border:1px dotted #EAEAEA;background: #FFD9FA;border-top: 1px solid #4c545b;border-bottom: 1px solid #4c545b;">하객수</td>
					<td colspan="3">${es.est_guest }명</td>
				</tr>

					<tr>
						<th style="text-align: center;background: #FFD9FA;border-bottom: 1px solid #4c545b;">항목</th>
						<th style="text-align: center;background: #FFD9FA;border-bottom: 1px solid #4c545b;">단가</th>
						<th style="text-align: center;background: #FFD9FA;border-bottom: 1px solid #4c545b;">비고</th>
						<th style="text-align: center;background: #FFD9FA;border-bottom: 1px solid #4c545b;">가격</th>
						<th style="text-align: center;background: #FFD9FA;border-bottom: 1px solid #4c545b;">내용</th>
					</tr>
					<tr>	
						<td style="background: #F8F8F8;">홀 대관비</td>
						<td>${es.hall_price1}원</td>
						<td>필수</td>
						<td>${es.hall_price1}원</td>
						<td>${es.hall_content}원</td>
						
						
						</tr>
						
						<tr>
						<td style="background: #F8F8F8;">꽃 장식</td>
						<td>0원</td>
						<td>필수</td>
						<td>0원</td>
						<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
						
						
						
						</tr>
						<tr>
						
						<td style="background: #F8F8F8;">폐백실 사용료</td>
						<td>0원</td>
						<td>필수</td>
						<td>0원</td>
						<td>폐백의상, 집기 포함한 폐백실 사용료</td>
						</tr>
						
						<tr>
						<td style="background: #F8F8F8;">수모비</td>
					    <td>${es.ourfit_price}원</td>
						<td>필수</td>
						<td>${es.ourfit_price}원</td>
						<td>폐백 도우미</td>
						
						</tr>
						
						<tr>
						<td style="background: #F8F8F8;">혼구용품</td>
						<td>0원</td>
						<td>필수</td>
						<td>0원</td>
						<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
						
						</tr>
						
					<tr>
						<td style="background: #F8F8F8;">연출비</td>
						<td>0원</td>
						<td>필수</td>
						<td>0원</td>
						<td>예식에 필요한 연출</td>
						</tr>
						
						<tr>
						<td style="background: #F8F8F8;">${es.meal}</td>
						<td>${es.meal_price}원</td>
						<td>필수</td>
						<td>${es.meal_price}원</td>
					<td>${es.meal_content}</td>
					</tr>
					
					<tr>
						<td colspan="8" align="center" height="40px;" style="font-size: 25px; background: #FFB4FF;">
						
					
						총 견적비용  :  ${es.meal_price+es.ourfit_price}
			
						</td>
					</tr>
		
			
			</table>
			
	<div>
			<c:if test="${empty hallestList }">
					
						<span>견적서가 안보입니다.ㅠ_ㅠ</span>
						
					</c:if>
					
					</div>

			<div clas="button">
			<br>
				<ul style="text-align: center;">
					<c:if test="${empty sessionScope.hallmode}">
							<input type="hidden" name="a" value="bss">
							<input type="hidden" name="hall_idx" value="${es.hall_idx }">
							<input type="submit" value="견적 확인">
						<a href="consult/consultContent.we"><input type="button" value="문의하기"></a>
						</c:if> 
						
				</ul>
				
			</div>
		
	</form>
	</div>
	</article>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>