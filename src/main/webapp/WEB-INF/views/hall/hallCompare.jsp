<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀vs홀</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<link rel="stylesheet" href="http://www.w3ii.com/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	table{
		width: 100%;
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
		font-size: 20px;
		background-color: #5D5D5D;
		margin: 0px;
		padding: 10px;
	}
	#close{
		float: right;
		cursor: pointer;
	}
	.window div{
		width: 50%;
		height: 100%;
		float: left;
	}
	.window #selHall{
		float: right;
	}
	.window #sll{
		padding: 40px;
	}
	.window #hallName{
		border-radius: 3px;
	}
	.window #hallGu{
		border-radius: 3px;
	}
	.window #hallList{
		margin: 10% 10%;
		width: 80%;
		height: 60%;
		overflow: auto;
		border: 3px solid #BDBDBD;
		padding-top: 10px;
		padding-bottom: 10px;
	}
	.window #hallList a{
		float: left;
		margin-left: 20px;
	}
	.window #hallList input{
		float: right;
		margin-right: 20px;
	}
	
	#hct{
		border-top: 1px solid #BDBDBD;
	}
	#hct th{
		border-bottom: 1px solid #BDBDBD;
		padding-left: 20px;
		padding-right: 20px;
	}
	#hct td{
		border-left: 1px solid #BDBDBD;
		border-bottom: 1px solid #BDBDBD;
		text-align: center;
		padding: 10px;
	}
	#before table{
		border-top: 3px solid #BDBDBD;
		border-bottom: 3px solid #BDBDBD;
		margin-bottom: 50px;
	}
	#before th{
		border-bottom: 3px solid #BDBDBD;
		border-right: 3px solid #BDBDBD;
		padding: 10px;
	}
	#before td:HOVER{
		cursor: pointer;
		opacity: 0.8;
		background-color: black;
	}
	#before td{
		border-bottom: 3px solid #BDBDBD;
	}
	#after td{
		text-align: center;
		width: 25%;
	}
	#after th{
		background-color: #e74742; 
		color: #fff;
	}
	.atd{
		border: 0px;
	}
	.ath{
		font-weight: bold;
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
		$('#mask').fadeTo("slow",0.8);    

		//윈도우 같은 거 띄운다.
		$('.window').show();
	}
	var ci = 0;
	var idxArr = [0,0,0];
	
	$(document).ready(function(){
		init();
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
				clearList();
				$('#before').hide();
				$('#after').show();
				for(var i=0;i<3;i++){
					delHall(i);
				}
			}
		});

		$('#beforeBtn').click(function(){
			clearList();
			$('#before').show();
			$('#after').hide();
		});
		
		$('.cpBtn:eq(0)').click(function(){
			clearList();
			for(var i=0;i<3;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i);
				$('#before').hide();
				$('#after').show();
			}
		});
		$('.cpBtn:eq(1)').click(function(){
			clearList();
			for(var i=3;i<6;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i-3);
				$('#before').hide();
				$('#after').show();
			}
		});
		$('.cpBtn:eq(2)').click(function(){
			clearList();
			for(var i=6;i<9;i++){
				getListResult($('.cpIdx:eq('+i+')').val(),i-6);
				$('#before').hide();
				$('#after').show();
			}
		});
		
		$('.ctd:eq(0)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(0)').val();
		});
		$('.ctd:eq(1)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(1)').val();
		});
		$('.ctd:eq(2)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(2)').val();
		});
		$('.ctd:eq(3)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(3)').val();
		});
		$('.ctd:eq(4)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(4)').val();
		});
		$('.ctd:eq(5)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(5)').val();
		});
		$('.ctd:eq(6)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(6)').val();
		});
		$('.ctd:eq(7)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(7)').val();
		});
		$('.ctd:eq(8)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(8)').val();
		});
		$('.ctd:eq(9)').click(function(){
			location.href='hallInfo.we?idx='+$('.cpIdx:eq(9)').val();
		});
	});
	
	function addHall(n){
		wrapWindowByMask();
		ci=n;
		$('#hallGu option:eq(0)').prop('selected', true);
		getList('hallAddSearchByGu.we',{gu:'all'});
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
			$('.rvBtn:eq('+ii+')').html('<input type="button" value="리뷰보기" class="btn btn-info"/>');
			$('.ifBtn:eq('+ii+')').html('<input type="button" value="상세보기"'
					+'onclick="goIf('+iidx+')" class="btn btn-info"/>');
			$('.emBtn:eq('+ii+')').html('<input type="button" value="견적내기" class="btn btn-info"/>');
		});
	}
	
	function clearList(){
		for(var ii=0;ii<3;ii++){
			$('.hname:eq('+ii+')').html('');
			$('.hlocation:eq('+ii+')').html('');
			$('.hstation:eq('+ii+')').html('');
			$('.htype:eq('+ii+')').html('');
			$('.hmenu:eq('+ii+')').html('');
			$('.hcost:eq('+ii+')').html('');
			$('.hguest:eq('+ii+')').html('');
			$('.hgrade:eq('+ii+')').html('');
			$('.rvBtn:eq('+ii+')').html('');
			$('.ifBtn:eq('+ii+')').html('');
			$('.emBtn:eq('+ii+')').html('');
		}
	}
	
	function init(){
		var hix = ${hallIdx};
		if(hix!=0){
			$('.hImg:eq(0)').attr('src','/finalproject/img/hall/'+hix+'/r1.jpg');
			idxArr[0]=hix;
			$('#om'+ci).val('x삭제');
			$('#om'+ci).attr('onclick','delHall(0)');
		}
	}
	
	function goIf(i){
		location.href='hallInfo.we?idx='+i;
	}
</script>
</head>
<body>
<div id="mask"></div>
<div class="window">
	<p class="at">웨딩홀 검색<a id="close">X</a></p>
		<div id="sll">
			<h4>지역으로 검색</h4>서울시
			<select id="hallGu">
				<option value="all">구</option>
				<c:forEach var="hg" items="${hallGu}">
					<option value="${hg}">${hg}</option>
				</c:forEach>
			</select>
			<br><br>
			<h4>홀명 직접 검색</h4>
			<input type="text" id="hallName" placeholder="웨딩홀 명 검색"/>
			<input type="button" value="검색" id="scName" class="btn btn-info btn-sm"/>
		</div>
		<div id="hld"></div>
</div>
<%@include file="/header.jsp"%>
<section>
	<article>
		<div style="margin: 0px auto; width: 1300px;">
		<p><h2 style="display: inline;">홀 비교하기</h2>&nbsp;2개 이상의 웨딩홀을 선택하여, 식대, 가격, 교통 등 다양한 정보에 대한 비교 결과의 확인이 가능합니다.</p>
		<form action="hallCompare.we" method="post">
			<table id="hct">
				<tr>
					<th><img src="/finalproject/img/hall/compare/c0.png"/></th>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
					<td><img class="hImg" src="/finalproject/img/hall/compare/c1.jpg"/></td>
				</tr>
				<tr>
					<th>웨딩홀명</th>
					<td><input type="button" value="+추가" class="openMask btn btn-info" id="om0" onclick="addHall(0)"/></td>
					<td><input type="button" value="+추가" class="openMask btn btn-info" id="om1" onclick="addHall(1)"/></td>
					<td><input type="button" value="+추가" class="openMask btn btn-info" id="om2" onclick="addHall(2)"/></td>
				</tr>
			</table>
			<p style="text-align: right; padding-right: 50px; margin-top: 10px;"><input type="button" class="btn btn-primary btn-lg" value="비교하기" id="comBtn"/></p>
		</form>
		<div id="before">
		<table>
			<c:set var="hi" value="0"/>
			<c:set var="ckHi" value="true"/>
			<c:forEach var="hl" items="${hallList}">
				<c:if test="${ckHi && hi<9}">
				<c:set var="ckHi" value="false"/>
				<tr>
					<th><input type="button" value="비교결과보기" class="cpBtn btn btn-primary btn-lg"/></th>
				</c:if>
				<c:if test="${!ckHi}">
					<td class="ctd">
						<img class="hImg" src="/finalproject/img/hall/${hl.idx}/r1.jpg"/><br>
						<a style="margin-left: 20px;"><strong>${hl.name}</strong></a><br>
						<a style="margin-left: 20px; color: gray;">${hl.si}>${hl.gu}</a>
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
		<table class="table table-striped table-hover table-bordered">
			<thead>
				<tr>
					<th>웨딩홀</th>
					<td class="hname" style="background-color: #e74742; color: #fff;"></td>
					<td class="hname" style="background-color: #e74742; color: #fff;"></td>
					<td class="hname" style="background-color: #e74742; color: #fff;"></td>
				</tr>
			</thead>
			<tbody>
			<tr class="table-active">
				<td class="ath">지역정보</td>
				<td colspan="3" class="atd"></td>
			</tr>
			<tr>
				<th>지역</th>
				<td class="hlocation"></td>
				<td class="hlocation"></td>
				<td class="hlocation"></td>
			</tr>
			<tr>
				<th>지하철</th>
				<td class="hstation"></td>
				<td class="hstation"></td>
				<td class="hstation"></td>
			</tr>
			<tr class="table-active">
				<td class="ath">홀 정보</td>
				<td colspan="3" class="atd"></td>
			</tr>
			<tr>
				<th>홀형태</th>
				<td class="htype"></td>
				<td class="htype"></td>
				<td class="htype"></td>
			</tr>
			<tr class="table-active">
				<td class="ath">메뉴,연회정보</td>
				<td colspan="3" class="atd"></td>
			</tr>
			<tr>
				<th>메뉴정보</th>
				<td class="hmenu"></td>
				<td class="hmenu"></td>
				<td class="hmenu"></td>
			</tr>
			<tr>
				<th>식사비용</th>
				<td class="hcost"></td>
				<td class="hcost"></td>
				<td class="hcost"></td>
			</tr>
			<tr>
				<th>보증인원</th>
				<td class="hguest"></td>
				<td class="hguest"></td>
				<td class="hguest"></td>
			</tr>
			<tr class="table-active">
				<td class="ath">평가,리뷰</td>
				<td colspan="3" class="atd"></td>
			</tr>
			<tr>
				<th>별점평</th>
				<td class="hgrade"></td>
				<td class="hgrade"></td>
				<td class="hgrade"></td>
			</tr>
			<tr>
				<th>리뷰</th>
				<td class="rvBtn"></td>
				<td class="rvBtn"></td>
				<td class="rvBtn"></td>
			</tr>
			<tr class="table-active">
				<td class="ath">상세보기,견적내기</td>
				<td colspan="3" class="atd"></td>
			</tr>
			<tr>
				<th>상세보기</th>
				<td class="ifBtn"></td>
				<td class="ifBtn"></td>
				<td class="ifBtn"></td>
			</tr>
			<tr>
				<th>견적내기</th>
				<td class="emBtn"></td>
				<td class="emBtn"></td>
				<td class="emBtn"></td>
			</tr>
			</tbody>
		</table>
		<p style="text-align: center; margin-bottom: 50px;"><input type="button" value="목록보기" id="beforeBtn" class="btn btn-danger btn-lg"/></p>
		</div>
		</div>
	</article>
</section>
<%@include file="/footer.jsp"%>
</body>
</html>