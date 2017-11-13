<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div{
	border:0;
	word-break:break-all;
	display:block;
}
li{
	display:inline-block;
	margin-right: 5px;
}
</style>
<title>Insert title here</title>
</head>
<script>

jQuery(function(){
		// 지도 지역 선택 후 검색
	$('#btn_seoul_loc').on('click', function(){
		var _tmp = new Array();
		var seoul_area_arr = $("#seoul_area").val().split(',');
		var len = seoul_area_arr.length;
		var valid_cnt = 0;
		
		for(i=0; i<len; i++) {
			if(seoul_area_arr[i] != '') {
				_tmp[valid_cnt] = seoul_area_arr[i];
				valid_cnt++;
			}
		}
		
		if(valid_cnt == 0) {
			alert('지역을 선택해 주시기 바랍니다.');
			return false;
		} else {
			$("#area").val('');
			$("#seoul_area").val(_tmp.join(','));
			$("#hall_srch").submit();
		}
	});
	
	// 기타 지역 선택
	$('input[name=area]').on('change', function(){
		$('.etc_add_area').hide();
		$("input[name='area_ic[]']").attr('checked', false);
		$("input[name='area_gg[]']").attr('checked', false);
		
		if($(this).val() == 'F') $('#tb_incheon').show();
		if($(this).val() == 'H') $('#tb_gyeonggi').show();
	});
	
	// 기타 지역 검색
	$('#btn_etc_loc').on('click', function(){
		if(!$("input[name=area]:checked").val()) {
			alert('지역을 선택해 주시기 바랍니다.');
			return;
		} else {
			$("#seoul_area").val('');
			$("#hall_srch").submit();
		}
	});
		
	$("#hall_srch").on('submit', function(){
		proc_layer();
		return true;
	});
	
		
	
});

function set_getElement_id_value(val){
	if($("#seoul_area").val().search(val) > -1)
		$("#seoul_area").val($("#seoul_area").val().replace(val+',', ''));
	else
		$("#seoul_area").val($("#seoul_area").val()+val+',');
}

function req_submit()
{
	$("#hall_srch").attr('action', '/with/collection/main/weddinghall_consult');
	$("#hall_srch").attr('method', 'post');
	$("#hall_srch").submit();
}

function goTo_view(item_code)
{
	var f = document.searchFrm;
	f.action = '/iwedding/hall_view/'+item_code;
	f.submit();
}

</script>
<body>



	<h1>웨딩홀</h1>
	<div>
		<ul>
			<li><a href="hallsearch.do">웨딩홀 상세검색</a></li>
			<li><a href="hallmap.do">구별 지역검색</a></li>
			<li><a href="hallsubway.do">지하철 검색</a></li>
		</ul>
	</div>


	<h2>구별 지역설정</h2>

			<img src="../img/wldur.jpg">
			<map id="imgmap2017111124439" name="imgmap2017111124439">
					<area shape="rect" alt="" title="" coords="222,33,244,47" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="179,2,215,24" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="170,41,192,53" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="182,73,208,81" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="237,73,261,87" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="208,87,228,99" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="194,109,220,119" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="234,113,256,123" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="274,107,302,123" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="244,137,274,151" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="202,147,232,163" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="164,153,196,167" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="118,171,152,183" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="78,179,110,195" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="120,143,150,157" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="146,121,176,135" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="160,97,180,113" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="142,81,180,95" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="108,87,140,99" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="106,53,138,67" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="88,97,114,111" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="90,123,130,141" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="40,151,72,163" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="52,131,78,147" href=""
						target="_self" />
					<area shape="rect" alt="" title="" coords="22,95,52,111" href=""
						target="_self" />
				
				</map>
	<br>

	<label>추천 웨딩홀</label>
	<br>
	<table border="1">
	<tr>
	<td>추천 웨딩홀 1 이미지</td>
	<td>설명</td>
	</tr>
	</table>
	<br>
	<label>검색 결과</label>
	<table>
		<tr>
			<td>결과</td>
		</tr>
	</table> -->


</body>
</html>