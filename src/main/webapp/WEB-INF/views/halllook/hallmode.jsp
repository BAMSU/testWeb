<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<<<<<<< HEAD
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
   href="https://bootswatch.com/4/journal/bootstrap.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/demos/style.css" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link href="https://fonts.googleapis.com/css?family=Montez"
   rel="stylesheet"> 
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


<script type="text/javascript">

</script>
=======
>>>>>>> branch 'master' of https://github.com/BAMSU/testWeb
<style>
#est{
	background: white;
	width: 500px;
	margin: 0 auto;
}

.title{
	font-size: 30px;
}
#tr2{
	width:100%;
	font-size: 20px;
	margin: 0 auto;
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
text-align: center;
width: 300px;
}
#tr8{
margin: 0 auto;
width: 300px;
}
.td1{
	width: 500px;
}
td{
	text-align: center;
}

</style>

<script>

</script>
</head>
<body>
<%@include file="/header.jsp" %>
<section style="background: gray;">
<article>
<p style="background-color: gray; height: 20px;margin: 0px; "></p>
<div id="est">

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
				
				<table class="tr3" border="1" style="margin-left: 15px;width: 300px;">
					<tr>
					<th style="font-size: 15px;background: #FFD9EC;">하객수</th>
						<td style="font-size: 15px;">${es.est_guest }명</td>
					</tr>
				</table>
<br>

				
				<table class="tr4" border="1"style="margin-left: 15px;width: 350px;">
					
						<tr>
						<th style="background: #FFD9EC;">결혼 예정일</th>
							<td><input type="text" id="datepicker1"> <select
								name="be">
									<option value="미정">미정</option>
									<option value="예정">예정</option>
									<option value="확정">확정</option>
							</select></td>
						</tr>
					
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
							
							<th style="text-align: center;background: #FFD9EC;">상품명</th>
							<th style="width: 60px;text-align: center;background: #FFD9EC;">가격</th>
							<th style="width: 50px;text-align: center;background: #FFD9EC;">비고</th>
							<th style="text-align: center;background: #FFD9EC;">내용</th>
						</tr>

						<tr>
							
							<td>홀 대관비</td>
							<td>${es.hall_price1  }</td>
							<td>필수</td>
							<td>${es.hall_content  }</td>
						</tr>
						<tr>
						
							<td>꽃장식</td>
							<td>0원</td>
							<td>필수</td>
							<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
						</tr>
						
						<tr>
						
							<td>폐백실 사용료</td>
							<td>0원</td>
							<td>필수</td>
							<td>폐백의상, 집기 포함한 폐백실 사용료</td>
						</tr>
						
						<tr>
						
							<td>수모비</td>
							<td>${es.ourfit_price }</td>
							<td>필수</td>
							<td>폐백 도우미</td>
						</tr>
						
						
						<tr>
						
							<td>혼구용품</td>
							<td>0원</td>
							<td>필수</td>
							<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
						</tr>
						
						
						
						<tr>
						
							<td>연출비</td>
							<td>0원</td>
							<td>필수</td>
							<td>예식에 필요한 연출</td>
						</tr>
						
						
						
						<tr>
						
							<td>${es.meal }</td>
							<td>
							
							${es.meal_price }
						
							</td>
							<td>필수</td>
							<td>${es.meal_content }</td>
						</tr>
						
						
						
						
					</tbody>
				</table>
			
			<br>
				
				<table id="tr7" border="1">
				<tr>
				<th colspan="4" style="background: #FFD9EC;text-align: center;">식사 메뉴</th>
				</tr>
					<tr>
						<th style="background: #FFD9EC;">선택</th>
						<th style="background: #FFD9EC;">메뉴</th>
						<th style="background: #FFD9EC;">단가</th>
						<th style="background: #FFD9EC;">내용</th>
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
				<td colspan="4" style="background: #FFD9EC;text-align: center;">음주류 선택</td>
				</tr>
					<tr>
						
						<th style="margin-right: 30px;padding-right: 30px;margin-left: 10px;text-align: center;background: #FFD9EC;">음주류</th>
						<th style="margin-right: 30px;padding-right: 30px;margin-left: 10px;text-align: center;background: #FFD9EC;">단가</th>
						<th style="background: #FFD9EC;">
						수량입력</th>
					</tr>

					<tr>
						
						<td>음료수</td>
						<td>400원</td>
						<td><input type="text" name="water" style="width:50px;" >개</td>
					</tr>
					<tr>
						
						<td>맥주</td>
						<td>2000원</td>
						<td><input type="text" name="beer" style="width:50px;" >개</td>
					</tr>
					
					</table>
					<br>
						
				<br>
				<p style="text-align: center;">
				<input type="hidden" name="hall_meal" value="checked"/>
				<input type="submit" value="견적확인하기">
				<a href="hall/hallestimate.we"><input type="button" value="닫기" ></a>
				</p>
			</form>
		</div>
	</div>
	</div>
	<p style="background-color: gray; height: 20px;margin: 0px; "></p>
	</article>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>