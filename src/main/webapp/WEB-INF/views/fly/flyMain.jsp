<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
var now = new Date();
var today = '';
var s_city='';
var a_city='';
var s_date=today;
var a_date=today;
var s=new Array(3);
var a=new Array(3);
var way=0;
var international=0;

var adult=0;
var children=0;
var infant=0;
	$(function() {
			
		$("#datepicker").datepicker();
		$('#datepicker').change(function(){
			s_date=$(this).val();
			s=s_date.split('/');
			s_date=s[2]+''+s[0]+''+s[1];
			if(s_date<today){
				 alert("오늘 날짜보다 이전 날짜입니다. " +today);
				 window.location.reload();
				
			}
		});
		
	});
	
	$(function() {
		$("#datepicker2").datepicker();
		$('#datepicker2').change(function(){
			a_date=$(this).val();
			a=a_date.split('/');
			a_date=a[2]+''+a[0]+''+a[1];
			
			if(a_date<today){
				 alert("오늘 날짜보다 이전 날짜입니다. " +today);
				 window.location.reload();
			
			}
			
		});
	});

	$(document).ready(function(){
		year = now.getFullYear();
		
		month = now.getMonth();
		
		date = now.getDate();
		
		monthtext="";
		datetext="";
		if(month+1>=10){
			 monthtext=""+(month+1);
			}else{
			 monthtext="0"+(month+1);
			}
		if(date>=10){
			 datetext=""+(date);
			}else{
			 datetext="0"+(date);
			}
		
		today = year + '' + monthtext + '' + datetext;
		
		
		$('#one-way').click(function(){
			$(function(){
				$("#datepicker2").hide();
				way=1;
			});
		});
		$('#round-way').click(function(){
			$(function(){
				$("#datepicker2").show();
				way=0;
			});
		});
		$('#tab_domestic').click(function(){
				$("#domestic-end").show();
				$("#international-end").hide();
				$("#datepicker").val('가는날');
				$("#datepicker2").val('오는날');
			
				international=0;
							
		});
		$('#tab_international').click(function(){
				$("#domestic-end").hide();
				$("#international-end").show();
				$("#datepicker").val('출국일');
				$("#datepicker2").val('귀국일');
				
				international=1;
				
			
			
		});
		$('#domestic-start').change(function(){
			s_city=$(this).val();
			
			
		});
		$('#domestic-end').change(function(){
			a_city=$(this).val();
			
		});
		$('#international-end').change(function(){
			a_city=$(this).val();
			
		});
		
		
		
	});
	
	$(function(){
		 adult = parseInt($('#domestic-ea-adult').val(),10);
		
		 children = parseInt($('#domestic-ea-children').val(),10);
		
		 infant = parseInt($('#domestic-ea-infant').val(),10);
		
		$('#domestic-ea-adult').change(function(){
			if((adult+children+infant)>9){
				alert('총 예약 가능한 좌석 수는 9석 입니다.');
				$('#domestic-ea-adult').find('option:first').attr('selected', 'selected');
			}
		});
		$('#domestic-ea-children').change(function(){
			if((adult+children+infant)>9){
				alert('총 예약 가능한 좌석 수는 9석 입니다.');
				$('#domestic-ea-children').find('option:first').attr('selected', 'selected');
			}
		});
		$('#domestic-ea-infant').change(function(){
			if((adult+children+infant)>9){
				alert('총 예약 가능한 좌석 수는 9석 입니다.');
				$('#domestic-ea-infant').find('option:first').attr('selected', 'selected');
			}
		});
	})
	
function viewList(){
		
		
		
		location.href='flyList.we?&s_city='+s_city
					+'&a_city='+a_city+'&s_date='+s_date+'&a_date='+a_date+'&way='+way+'&international='+international;
		
		
	}

</script>
</head>
<body>
	<form id="airForm" name="domesticForm">
		<table border="1">
			<tr>
				<td><label>항공권 예약</label> <label for="round-way"> <input
						type="radio" name="round_way" id="round-way" value="RT"
						checked="checked"> 왕복
				</label> <label for="one-way"> <input type="radio" name="round_way"
						id="one-way" value="OW"> 편도
				</label>
					<ul>
						<li><a id="tab_domestic" href="#none">국내선</a></li>
						<li><a id="tab_international" href="#none">국제선</a></li>
					</ul> <input type="hidden" id="domestic-round-way"
					name="domestic_round_way" value="RT" /> <input type="hidden"
					name="domestic_airline" value="KE" /> <input type="hidden"
					name="domestic_airline" value="OZ" /> <input type="hidden"
					name="domestic_airline" value="7C" /> <input type="hidden"
					name="domestic_airline" value="LJ" /> <input type="hidden"
					name="domestic_airline" value="TW" /> <input type="hidden"
					name="domestic_airline" value="ZE" /> <input type="hidden"
					name="domestic_airline" value="BX" /></td>
				<!-- HND 도쿄/하네다
						 PEK 베이징/서우두
						 PVG 상하이
						 KIX 오사카
						 TSA 쑹산
						 VVO 블라디보스톡
						 SPN 사이판
						 SHA 상해
						 NRT 나리타
						 MFM 마카오
						 GLM 괌
						 DAD 다낭
						 CEB 세부
						 
					 -->
			</tr>
			<tr>
				<td><select id="domestic-start" name="domestic_start"
					title="출발지">
					<option value="">출발 공항</option>
						<option value="GMP">서울/김포		</option>
						<option value="PUS">부산/김해		</option>
						<option value="CJU">제주		</option>
						<option value="RSU">여수		</option>
						<option value="KPO">포항		</option>
				</select> <select id="domestic-end" name="domestic_start" title="도착지"
					style="display: '';">
						<option value="">도착 공항</option>
						<option value="GMP">서울/김포		</option>
						<option value="PUS">부산/김해		</option>
						<option value="CJU">제주		</option>
						<option value="RSU">여수		</option>
						<option value="KPO">포항		</option>
				</select> <select id="international-end" name="domestic_end" title="목적지"
					style="display: none;">
						<option value="">도착 공항</option>
						<option value="HND">도쿄/하네다		</option>
						<option value="PEK">베이징/서우두	</option>
						<option value="CJU">상하이		</option>
						<option value="RSU">오사카		</option>
						<option value="KPO">사이판		</option>
						<option value="GLM">괌			</option>
						<option value="DAD">다낭			</option>
						<option value="CEB">세부			</option>
						<option value="NRT">나리타		</option>
						<option value="SHA">상해			</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="text" id="datepicker" value="가는날" readonly="readonly">
					<input type="text" id="datepicker2" value="오는날" readonly="readonly"></td>
			<tr>
				<td><select id="domestic-ea-adult" name="domestic_ea_adult"
					style="z-index: 10; opacity: 100;">
						<option value="1">성인 1</option>
						<option value="2">성인 2</option>
						<option value="3">성인 3</option>
						<option value="4">성인 4</option>
						<option value="5">성인 5</option>
						<option value="6">성인 6</option>
						<option value="7">성인 7</option>
						<option value="8">성인 8</option>
						<option value="9">성인 9</option>
				</select> <select id="domestic-ea-children" name="domestic_ea_children"
					style="z-index: 10; opacity: 100;">
						<option value="0">어린이 0</option>
						<option value="1">어린이 1</option>
						<option value="2">어린이 2</option>
						<option value="3">어린이 3</option>
						<option value="4">어린이 4</option>
						<option value="5">어린이 5</option>
						<option value="6">어린이 6</option>
						<option value="7">어린이 7</option>
						<option value="8">어린이 8</option>
						<option value="9">어린이 9</option>
				</select> <select id="domestic-ea-infant" name="domestic_ea_infant"
					style="z-index: 10; opacity: 100;">
						<option value="0">유아 0</option>
						<option value="1">유아 1</option>
						<option value="2">유아 2</option>
						<option value="3">유아 3</option>
						<option value="4">유아 4</option>
						<option value="5">유아 5</option>
						<option value="6">유아 6</option>
						<option value="7">유아 7</option>
						<option value="8">유아 8</option>
						<option value="9">유아 9</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="button" value="검색하기" onclick="viewList();">
				</td>
			</tr>
		</table>
	</form>




</body>
</html>