<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tr1{
	border:5px solid red;
	text-align: center;
}
.title{
	text-align: center;
	font-size: 30px;
}
#tr2{
	border: 5px solid red;	
	font-size: 20px;
}
#tr2.tr{
	width: 50px;
	height: 100px;
}
#tr3{
	font-size: 30px;
	border: 5px solid bule;
	width: 50px;
	height: 100px;
}
#tr5{
	border: 5px solid yellow;
}
#tr6{
	border: 5px solid black;
}
#tr7{
	border: 5px solid bule;
}
.td1{
	border:5px solid blue;
	width: 500px;
}
</style>

<script>
function submit(){
	alert('확인');
}
	function close() {
		alert('닫기');
	}
</script>
</head>
<body>
<%@include file="/header.jsp" %>
	<div class="title">견적내기</div>
	
		<div id="tr1">
		<div class="td1">
		<form name="estmoed" action="hallestimate.we">
		<c:set var="es" value="${hallmod}"/>
			
				<table class="tr2" border="1">
					<tr>
						<th rowspan="6" align="center" style="font-size: 25px;margin-left: 100px;">${es.hall_name }</th>
					</tr>
				</table>
			<br>
				
				<table class="tr3" border="1">
					<tr>
					<th>하객수</th>
						<td>${es.est_guest }</td>
					</tr>
				</table>
<br>

				
				<table class="tr4" border="1">
					<tbody class="td2">
						<tr>
						<th style="padding-right: 30px; ">결혼 예정일</th>
							<td><input type="text" name="wedding"> <select
								name="be">
									<option value="미정">미정</option>
									<option value="예정">예정</option>
									<option value="확정">확정</option>
							</select></td>
						</tr>
					</tbody>
				</table>

				
				<br>
				<table class="tr5" border="1" style="margin: 0 atuo;">
					<tbody>
						<tr>
						<td colspan="2">홀 선택</td>
						</tr>

						<tr>
							<th>선택</th>
							<th>홀명</th>
						</tr>

						
						
						<tr>
						<c:forEach var="e" items="${dtorom}">
					
							</tr>
							<tr>
							<td><input type="radio" name="halame" checked="checked">
							</td>
							<td>${e.name}</td>
						
							</c:forEach>
						</tr>
						 
					</tbody>
				</table>

				<br>
				<table id="tr6" border="1">
					<tbody>
					<tr>
					<th colspan="5" style="text-align: center;font-size: 15px;">사용료</th>
					</tr>
						<tr>
							<th>선택</th>
							<th>상품명</th>
							<th>가격</th>
							<th>비고</th>
							<th>내용</th>
						</tr>

						<tr>
							<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>홀 대관비</td>
							<td>${es.hall_price1  }</td>
							<td>필수</td>
							<td>${es.hall_price1  }</td>
						</tr>
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>꽃장식</td>
							<td>0원</td>
							<td>필수</td>
							<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
						</tr>
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>폐백실 사용료</td>
							<td>0원</td>
							<td>필수</td>
							<td>폐백의상, 집기 포함한 폐백실 사용료</td>
						</tr>
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>수모비</td>
							<td>${es.ourfit_price }</td>
							<td>필수</td>
							<td>폐백 도우미</td>
						</tr>
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>혼구용품</td>
							<td>0원</td>
							<td>필수</td>
							<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
						</tr>
						
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>연출비</td>
							<td>0원</td>
							<td>필수</td>
							<td>예식에 필요한 연출</td>
						</tr>
						
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>${es.meal }</td>
							<td>${es.meal_price }</td>
							<td>필수</td>
							<td>${es.meal_content }</td>
						</tr>
						
						
						
						
					</tbody>
				</table>

				
				<table id="tr7" border="1">
				<tr>
				<th>식사 메뉴</th>
				</tr>
					<tr>
						<th>선택</th>
						<th>메뉴</th>
						<th>단가</th>
						<th>내용</th>
					</tr>

					<tr>
						<td><input type="radio" name="hall_meal" checked="checked"></td>
						<td>${es.meal }</td>
						<td>${es.meal_price }</td>
						<td>${es.meal_content }</td>
					</tr>
					<tr>
						<td><input type="radio" name="hall_meal" checked="checked"></td>
						<td>${es.meal }</td>
						<td>${es.meal_price2 }</td>
						<td>${es.meal_content2 }</td>
					</tr>
				</table>

				
				<table id="tr8" border="1">
				<tr>
				<td>음주류 선택</td>
				</tr>
					<tr>
						<th>선택</th>
						<th>음주류</th>
						<th>단가</th>
						<th>수량입력</th>
					</tr>

					<tr>
						<td><input type="radio" name="hall_drink" checked="checked"></td>
						<td>음료수</td>
						<td>3000원</td>
						<td><input type="text" name="drink_num"></td>
					</tr>
					
					
					<tr>
						<td>총 견적비용  : ${es.hall_price1+es.ourfit_price+es.meal_price}</td>
					</tr>
				</table>

				<input type="submit" value="견적확인하기">
				<input type="button" value="닫기" onclick="colse()">
			</form>
		</div>
	</div>
	<%@include file="/footer.jsp" %>
</body>
</html>