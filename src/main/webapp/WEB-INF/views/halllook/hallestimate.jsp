<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function inquiry() {
		alert('확인');
	}
</script>
<style>

</style>
</head>
<style>
</style>
<body> 	
<%@include file="/header.jsp" %>
<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.we">웨딩홀 검색</a></li>
					<li><a href="hallranking.we">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallsearchlist.we">불러오기확인</a></li>
					<li><a href="hallestimate.we">홀 견적내기</a></li>
					<li><a href="hallranking.we">랭킹</a></li>
				</ul>
			</div>

	
	<c:set var="em" value="${hallview}"/>
	<label>홀 견적내기</label>
	
	<table border="1">

		<tr>
			<th>홀 이름 : ${em.name }</th>
			</tr>
			<tr>
			<td>  <img src="/finalproject/img/hall/${em.idx}/r1.jpg" alt="홀대표사진" style=" width: 400px; height: 270px;"/>
			</td>
		</tr>
		<tr>
			<th>식사비용 </th>
			<td>${em.mealCost }</td>
		</tr>
		<tr>
			<th>메뉴종류</th>
			<td>${em.menuType }</td>
		</tr>
		<tr>
			<th>보증인원 </th>
			<td>${em.guest }</td>
		</tr>		
		
	</table>
	
	   <button type="button" class="btn btn-primary">상담신청</button>
	
	<form name="hallestmate" action="hallmode.we">
		<p>본 견적은 웨딩홀에서 제공한 가격 정보를 단순 계산한 견적으로 실제 견적과의 차이가 있을 수 있습니다.</p>
		
		<table border="1">

				<thead>
					<tr>
						<th style="text-align: center; margin: 0 auto;">웨딩홀 견적서</th>
					</tr>

					<tr>
						<th>웨딩홀명</th>
						<td>${em.name }</td>
					</tr>

					<tr>
						<th>선택 홀</th>
						<td>${em.hallType }</td>
					</tr>

					<tr>
						<th>하객수</th>
						<td>${em.guest }</td>
					</tr>

				</thead>

<c:set var="es" value="${hallestList }"/>
				<tbody>
				<tr>
					<td>웨딩홀 이름:${es.hall_name }</td>
					<td>선택 홀 : ${es.hall_idx }
					<!-- ------------------------------------------------ -->
					</td>
					
					<td>하객 수 : ${es.est_guest }</td>
				</tr>

					<tr>
						<th>항목</th>
						<td>홀 대관비</td>
						<td>꽃 장식</td>
						<td>폐백실 사용료</td>
						<td>수모비</td>
						<td>혼구용품</td>
						<td>연출비</td>
						<td>${es.meal }</td>
					
					</tr>
					<tr>
						<th>단가</th>
						<td>${es.hall_price1  }</td>
						<td>0원</td>
						<td>0원</td>
						<td>${es.ourfit_price }</td>
						<td>0원</td>
						<td>0원</td>
						<td>${es.meal_price }</td>
						
					</tr>

					<tr>
					<th>비고</th>
						<td>필수</td>
						<td>필수</td>
						<td>필수</td>
						<td>필수</td>
						<td>필수</td>
						<td>필수</td>
						<td>필수</td>
						
					</tr>
					<tr>
					<th>가격</th>
						<td>${es.hall_price1  }</td>
						<td>0원</td>
						<td>0원</td>
						<td>${es.ourfit_price }</td>
						<td>0원</td>
						<td>0원</td>
						<td>${es.meal_price }</td>
					</tr>
					
					<tr>
					<th>내용</th>
					<td>${es.hall_content }</td>
					<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
					<td>폐백의상, 집기 포함한 폐백실 사용료</td>
					<td>폐백 도우미</td>
					<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
					<td>예식에 필요한 연출</td>
					<td>${es.meal_content }</td>
					</tr>

					<tr>
						<td rowspan="4" align="center">
						
					총 견적비용  : ${es.hall_price1+es.ourfit_price+es.meal_price}
						
						 </td>
					</tr>
		
			</tbody>
			</table>
			<div></div>
	<div>
			<c:if test="${empty hallestList }a">
					<ul>
						<li>견적서가 안보입니다.ㅠ_ㅠ</li>
						</ul>
					</c:if>
					
					</div>

			<div>
				<ul>
					<li><c:if test="${empty sessionScope.hallmode}">
							<input type="hidden" name="a" value="bss">
							<input type="hidden" name="hall_idx" value="${es.hall_idx }">
							<input type="submit" value="견적작성">
						</c:if> <input type="button" value="문의하기" onclick="inquiry()"></li>
				</ul>
				
			</div>
		
	</form>
	<%@include file="/footer.jsp" %>
</body>
</html>