<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	table{
		border: 1px solid black;
	}
	.hImg{
		width: 300px;
		height: 200px;
		margin: 20px;
	}
	#mask {  
	  position:absolute;  
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	  left:0;
	  top:0;
	}
	.window{
	  display: none;
	  position:absolute;  
	  margin: 15% 25%;
	  z-index:10000;
	  width: 50%;
	  height: 40%;
	  background-color: white;
	}
	.window .at{
		text-align: center;
		color: white;
		font-size: 30px;
		background-color: black;
		margin: 0px;
	}
	#close{
		float: right;
		cursor: pointer;
	}
	.window div{
		width: 50%;
		height: 100%;
		float: left;
		border: 1px solid black;
	}
	.window #selHall{
		float: right;
	}
</style>
<script>
	function wrapWindowByMask(){
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();  

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({'width':maskWidth,'height':maskHeight});  

		//애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
		$('#mask').fadeTo("slow",0.7);    

		//윈도우 같은 거 띄운다.
		$('.window').show();
	}
	var ci = 0;
	var idxArr = [0,0,0];
	
	$(document).ready(function(){
		$('#after').hide();
		//닫기 버튼을 눌렀을 때
		$('.window #close').click(function (e) {  
		    //링크 기본동작은 작동하지 않도록 한다.
		    e.preventDefault();  
		    $('#mask, .window').hide();  
		});       

		//검은 막을 눌렀을 때
		$('#mask').click(function () {  
			$('#mask, .window').hide();  
		});   
		
		$('#hallGu').change(function(){
			var ggu = {gu:$(this).val()};
			getList('hallAddSearchByGu.we',ggu);
		});
		
		$('#hallName').click(function(){
			$(this).val('');
		});
		
		$('#scName').click(function(){
			if($('#hallName').val()==''){
				alert('홀이름을 입력하여주세요.');
				$('#hallName').val('');
			}else{
				var nname = {name:$('#hallName').val()};
				getList('hallAddSearchByName.we',nname);
			}
		});
		
		$('#comBtn').click(function(){
			var ckk = 0;
			for(var i=0;i<idxArr.length;i++){
				if(idxArr[i]!=0){
					ckk++;
				}
			}
			if(ckk<2){
				alert('두 개 이상의 웨딩홀을 추가하여 주세요.');
			}else{
				for(var i=0;i<idxArr.length;i++){
					if(idxArr[i]!=0){
						getListResult(idxArr[i],i);
					}
				}
			}
			$('#before').hide();
			$('#after').show();
			delHall(0);
			delHall(1);
			delHall(2);
		});

		$('#beforeBtn').click(function(){
			$('#before').show();
			$('#after').hide();
		});
		
		$('.cpBtn:eq(0)').click(function(){
			for(var i=0;i<3;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i);
				$('#before').hide();
				$('#after').show();
			}
		});
		$('.cpBtn:eq(1)').click(function(){
			for(var i=3;i<6;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i);
				$('#before').hide();
				$('#after').show();
			}
		});
		$('.cpBtn:eq(2)').click(function(){
			for(var i=6;i<9;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i);
				$('#before').hide();
				$('#after').show();
			}
		});
	});
	
	function addHall(n){
		wrapWindowByMask();
		ci=n;
	}
	
	function getList(url,param){
		$.get(url,param,function(data){
			if(data.hallListBy=='none'){
				alert('없는 호텔이름입니다.');
			}else{
				$('#hallList').remove();
				$('#hld').append(data.hallListBy);
			}

			$('#hallName').val('');
		});
	}
	
	function selHall(idx){
		var cki = false;
		for(var i=0;i<idxArr.length;i++){
			if(idxArr[i]==idx){
				cki=true;
				break;
			}
		}
		if(!cki){
			$('.hImg:eq('+ci+')').attr('src','/finalproject/img/hall/'+idx+'/r1.jpg');
			idxArr[ci]=idx;
			$('#om'+ci).val('x삭제');
			$('#om'+ci).attr('onclick','delHall('+ci+')');
		$('#mask, .window').hide();
		}else{
			alert('이미 선택된 웨딩홀 입니다.');
		}
	}
	
	function delHall(n){
		idxArr[n]=0;
		$('.hImg:eq('+n+')').attr('src','/finalproject/img/hall/compare/c1.jpg');
		$('#om'+n).val('+추가');
		$('#om'+n).attr('onclick','addHall('+n+')');
	}
	
	function getListResult(iidx,ii){
		$.post('hallCompare.we',{idx:iidx},function(data){
			var hlbi = data.hallListByIdx;
			$('.hname:eq('+ii+')').html(hlbi.name);
			$('.hlocation:eq('+ii+')').html(hlbi.si+'>'+hlbi.gu+'>'+hlbi.dong);
			$('.hstation:eq('+ii+')').html(hlbi.line+' '+hlbi.station);
			$('.htype:eq('+ii+')').html(hlbi.hallType);
			$('.hmenu:eq('+ii+')').html(hlbi.menuType);
			$('.hcost:eq('+ii+')').html(hlbi.mealCost);
			$('.hguest:eq('+ii+')').html(hlbi.guest);
			$('.hgrade:eq('+ii+')').html(hlbi.grade);
		});
	}

</script>
</head>
<body>
<div id="mask"></div>
<div class="window">
	<p class="at">웨딩홀 검색<a id="close">X</a></p>
		<div style="background-color: yellow;">
			지역으로 검색<br>
			<select id="hallGu">
				<option value="all">구</option>
				<c:forEach var="hg" items="${hallList}">
					<option value="${hg.gu}">${hg.gu}</option>
				</c:forEach>
			</select>
			<br>
			홀명 직접 검색<br>
			<input type="text" id="hallName" placeholder="웨딩홀 명 검색"/>
			<input type="button" value="검색" id="scName"/>
		</div>
		<div id="hld" style="background-color: green;">
			<div id="hallList" style="overflow: auto;">
				<c:forEach var="hn" items="${hallList}">
					<p>${hn.name}<input type="button" value="선택" onclick="selHall('${hn.idx}')"/></p>
				</c:forEach>
			</div>
		</div>
</div>
<header>
<div style="background-color: red; height: 300px;"></div>
</header>
<section>
	<article style="float: left;">
		<div style="background-color: yellow; width: 100px; height: 700px;"></div>
	</article>
	<article style="float: left;">
		<p><h2 style="display: inline;">홀 비교하기</h2>2개 이상의 웨딩홀을 선택하여, 식대, 가격, 교통 등 다양한 정보에 대한 비교 결과의 확인이 가능합니다.</p>
		<form action="hallCompare.we" method="post">
			<table>
				<tr>
					<th><img src="/finalproject/img/hall/compare/c0.png"/></th>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
				</tr>
				<tr>
					<th>웨딩홀명</th>
					<td><input type="button" value="+추가" class="openMask" id="om0" onclick="addHall(0)"/></td>
					<td><input type="button" value="+추가" class="openMask" id="om1" onclick="addHall(1)"/></td>
					<td><input type="button" value="+추가" class="openMask" id="om2" onclick="addHall(2)"/></td>
				</tr>
			</table>
			<input type="button" value="비교하기" id="comBtn"/>
		</form>
		<div id="before">
		<table>
			<c:set var="hi" value="0"/>
			<c:set var="ckHi" value="true"/>
			<c:forEach var="hl" items="${hallList}">
				<c:if test="${ckHi && hi<9}">
				<c:set var="ckHi" value="false"/>
				<tr>
					<th><input type="button" value="비교결과보기" class="cpBtn"/></th>
				</c:if>
				<c:if test="${!ckHi}">
					<td>
						<img class="hImg" src="/finalproject/img/hall/${hl.idx}/r1.jpg"/><br>
						<a>${hl.name}</a><br>
						<a>${hl.si}>${hl.gu}</a>
						<input type="hidden" value="${hl.idx}" class="cpIdx"/>
					</td>
					<c:set var="hi" value="${hi+1}"/>
					<c:if test="${hi%3!=0}">
						<td>vs</td>
					</c:if>
					<c:if test="${hi%3==0}">
						<c:set var="ckHi" value="true"/>
					</c:if>
				</c:if>
				<c:if test="${ckHi}">	
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		<div id="after">
		<table>
			<tr>
				<th>웨딩홀</th>
				<th class="hname"></th>
				<th class="hname"></th>
				<th class="hname"></th>
			</tr>
			<tr>
				<th colspan="4">지역정보</th>
			</tr>
			<tr>
				<td>지역</td>
				<td class="hlocation"></td>
				<td class="hlocation"></td>
				<td class="hlocation"></td>
			</tr>
			<tr>
				<td>지하철</td>
				<td class="hstation"></td>
				<td class="hstation"></td>
				<td class="hstation"></td>
			</tr>
			<tr>
				<th colspan="4">홀 정보</th>
			</tr>
			<tr>
				<td>홀형태</td>
				<td class="htype"></td>
				<td class="htype"></td>
				<td class="htype"></td>
			</tr><!-- 
			<tr>
				<td>예식형태</td>
				<td>지하철역</td>
				<td>지하철역</td>
				<td>지하철역</td>
			</tr>
			<tr>
				<td>예식간격</td>
				<td>지하철역</td>
				<td>지하철역</td>
				<td>지하철역</td>
			</tr> -->
			<tr>
				<th colspan="4">메뉴,연회정보</th>
			</tr>
			<tr>
				<td>메뉴정보</td>
				<td class="hmenu"></td>
				<td class="hmenu"></td>
				<td class="hmenu"></td>
			</tr>
			<tr>
				<td>식사비용</td>
				<td class="hcost"></td>
				<td class="hcost"></td>
				<td class="hcost"></td>
			</tr>
			<tr>
				<td>보증인원</td>
				<td class="hguest"></td>
				<td class="hguest"></td>
				<td class="hguest"></td>
			</tr>
			<tr>
				<th colspan="4">평가,리뷰</th>
			</tr>
			<tr>
				<td>별점평</td>
				<td class="hgrade"></td>
				<td class="hgrade"></td>
				<td class="hgrade"></td>
			</tr>
			<tr>
				<td>리뷰</td>
				<td><input type="button" value="리뷰보기"/></td>
				<td><input type="button" value="리뷰보기"/></td>
				<td><input type="button" value="리뷰보기"/></td>
			</tr>
		</table>
		<input type="button" value="목록보기" id="beforeBtn"/>
		</div>
	</article>
	<article style="float: right;">
		<div style="background-color: yellow; width: 100px; height: 700px;"></div>
	</article>
</section>
<footer style="clear: both;">
<div style="background-color: blue; height: 300px;"></div>
</footer>
</body>
</html>