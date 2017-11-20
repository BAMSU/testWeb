<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<style>
#est{
	margin: 0 auto;
	padding-left: 250px;
	width: 100%;
	height: 100%;
}
#tr1{
	text-align: center;
}
.title{
	font-size: 30px;
	margin: 0 auto;
	padding-left: 300px;
}
#tr2{
	width:100%;
	font-size: 20px;
	margin: 0 auto;
}
#tr2.tr{
	width: 50px;
	height: 100px;
}
#tr3{
	font-size: 30px;
	width: 50px;
	height: 100px;
	margin: 0 auto;
}
#tr5{
	text-align: center;
	margin-left: 30px;
}
#tr6{
margin: 0 auto;
}
#tr7{
margin: 0 auto;
}
#tr8{
margin: 0 auto;
}
.td1{
	width: 500px;
}
</style>

<script>

</script>
</head>
<body>
<%@include file="/header.jsp" %>

<div id="est">
<p style="background-color: gray; height: 20px;margin: 0px; "></p>
	<div class="title">견적내기</div>
	
		<div id="tr1">
		<div class="td1">
		<form name="estmoed" action="hallestimate.we">
		<c:set var="es" value="${hallmod}"/>
			
				<table class="tr2">
					<tr>
						<th style="font-size: 35px;text-align: center;padding-left: 200px;">${es.hall_name }</th>
					</tr>
				</table>
			<br>
				
				<table class="tr3" border="1">
					<tr>
					<th style="font-size: 15px;padding-left: 100px;background: #FFD9EC;">하객수</th>
						<td style="font-size: 15px;padding-right: 100px;">${es.est_guest }</td>
					</tr>
				</table>
<br>

				
				<table class="tr4" border="1">
					<tbody class="td2">
						<tr>
						<th style="padding-right: 30px;background: #FFD9EC;">결혼 예정일</th>
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
				<table class="tr5" border="1" style="margin-left: 15px;width: 400px;">
					<tbody>
						<tr>
						<td colspan="2" style="background: #FFD9EC;">홀 선택</td>
						</tr>

						<tr >
							<th style="text-align: center;background: #FFD9EC;">선택</th>
							<th style="text-align: center;background: #FFD9EC;">홀명</th>
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
					<th colspan="5" style="text-align: center;font-size: 15px;background: #FFD9EC;">사용료</th>
					</tr>
						<tr>
							<th style="width: 30px;text-align: center; background: #FFD9EC;">선택</th>
							<th style="text-align: center;background: #FFD9EC;">상품명</th>
							<th style="width: 60px;text-align: center;background: #FFD9EC;">가격</th>
							<th style="width: 50px;text-align: center;background: #FFD9EC;">비고</th>
							<th style="text-align: center;background: #FFD9EC;">내용</th>
						</tr>

						<tr>
							<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>홀 대관비</td>
							<td>${es.hall_price1  }</td>
							<td>필수</td>
							<td>${es.hall_content  }</td>
						</tr>
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>꽃장식</td>
							<td>0원</td>
							<td>필수</td>
							<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
						</tr>
						
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>폐백실 사용료</td>
							<td>0원</td>
							<td>필수</td>
							<td>폐백의상, 집기 포함한 폐백실 사용료</td>
						</tr>
						
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>수모비</td>
							<td>${es.ourfit_price }</td>
							<td>필수</td>
							<td>폐백 도우미</td>
						</tr>
						
						
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>혼구용품</td>
							<td>0원</td>
							<td>필수</td>
							<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
						</tr>
						
						
						
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>연출비</td>
							<td>0원</td>
							<td>필수</td>
							<td>예식에 필요한 연출</td>
						</tr>
						
						
						
						<tr>
						<td><input type="checkbox" name="hall_use" checked="checked"></td>
							<td>${es.meal }</td>
							<td>${es.meal_price }</td>
							<td>필수</td>
							<td>${es.meal_content }</td>
						</tr>
						
						
						
						
					</tbody>
				</table>
			
			<br>
				
				<table id="tr7" border="1">
				<tr>
				<th colspan="4" style="text-align: center;background: #FFD9EC;">식사 메뉴</th>
				</tr>
					<tr>
						<th style="background: #FFD9EC;">선택</th>
						<th style="width: 50px;background: #FFD9EC;">메뉴</th>
						<th style="width: 50px;background: #FFD9EC;">단가</th>
						<th style="width: 200px;background: #FFD9EC;">내용</th>
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
	<br>
				
				
				<table id="tr8" border="1">
				<tr>
				<td colspan="4" style="background: #FFD9EC;">음주류 선택</td>
				</tr>
					<tr>
						<th style="width: 30px;background: #FFD9EC;">선택</th>
						<th style="margin-right: 30px;padding-right: 30px;margin-left: 10px;text-align: center;background: #FFD9EC;">음주류</th>
						<th style="margin-right: 30px;padding-right: 30px;margin-left: 10px;text-align: center;background: #FFD9EC;">단가</th>
						<th style="background: #FFD9EC;">수량입력</th>
					</tr>

					<tr>
						<td style="width: 30px;"><input type="checkbox" name="hall_drink" checked="checked"></td>
						<td>음료수</td>
						<td>3000원</td>
						<td><input type="text" name="drink_num"></td>
					</tr>
					
					</table>
					<br>
						<div class="numest" style="width: 400px;background: #EAEAEA;text-align: center;font-size: 30px;margin-left: 30px;">총 견적비용  : ${es.hall_price1+es.ourfit_price+es.meal_price}</div>
					
				<br>

				<input type="submit" value="견적확인하기">
				<a href="hall/hallestimate.we"><input type="button" value="닫기" ></a>
			</form>
		</div>
	</div>
	</div>
	<%@include file="/footer.jsp" %>
</body>
</html>