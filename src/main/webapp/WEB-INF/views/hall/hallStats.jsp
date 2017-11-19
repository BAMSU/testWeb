<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀 통계</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	section{
		background-color: gray;
	}
	#hn{
		border-bottom: 3px solid black;
	}
	table{
		text-align: center;
	}
	table th{
		text-align: center;
	}
	#chart1,#chart2,#chart3,#chart4{
		width: 100%;
		height: 60%
	}
</style>
<script>
var cn;
var cm=new Array(12);
var mon=new Array(12);
	function init(){
		var now = new Date();
		mon[0]=now.getMonth()-2;
		mon[1]=now.getMonth()-1;
		mon[2]=now.getMonth();
		var hallIdx=${hallIdx};
		$.post('hallStats.we',{idx:hallIdx},function(data){
			$.each(data.hallStats1, function(i,v){
				if(v.month==mon[0]){
					cm[0]=v.typeNum;
				}else if(v.month==mon[1]){
					cm[1]=v.typeNum;
				}else if(v.month==mon[2]){
					cm[2]=v.typeNum;
				}
	        });
			$.each(data.hallStats2, function(i,v){
				if(v.month==mon[0]){
					cm[3]=v.typeNum;
				}else if(v.month==mon[1]){
					cm[4]=v.typeNum;
				}else if(v.month==mon[2]){
					cm[5]=v.typeNum;
				}
	        });
			$.each(data.hallStats3, function(i,v){
				if(v.month==mon[0]){
					cm[6]=v.typeNum;
				}else if(v.month==mon[1]){
					cm[7]=v.typeNum;
				}else if(v.month==mon[2]){
					cm[8]=v.typeNum;
				}
	        });
			$.each(data.hallStats4, function(i,v){
				if(v.month==mon[0]){
					cm[9]=v.typeNum;
				}else if(v.month==mon[1]){
					cm[10]=v.typeNum;
				}else if(v.month==mon[2]){
					cm[11]=v.typeNum;
				}
	        });
		});
		drawChart();
	}
</script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:['corechart']});
  function drawChart() {
	  var options = {
	      width: 416,
	      height: 300,
	      bar: {groupWidth: "60%"},
	      legend: {position: "none"},
	      vAxis: {minValue:0,format:"#"}
	    };
    var data1 = google.visualization.arrayToDataTable([
      ["월", "상담신청", {role:"style"},{role:"annotation"}],
      [mon[0]+"월", cm[0], "#FFA7A7", cm[0]],
      [mon[1]+"월", cm[1], "#A566FF", cm[1]],
      [mon[2]+"월", cm[2], "#4374D9", cm[2]]
    ]);
    var chart1 = new google.visualization.ColumnChart(document.getElementById("chart1"));
    chart1.draw(data1, options);
    
    var data2 = google.visualization.arrayToDataTable([
        ["월", "홀 견적내기", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[3], "#FFA7A7", cm[3]],
        [mon[1]+"월", cm[4], "#A566FF", cm[4]],
        [mon[2]+"월", cm[5], "#4374D9", cm[5]]
    ]);
    var chart2 = new google.visualization.ColumnChart(document.getElementById("chart2"));
    chart2.draw(data2, options);
    
    var data3 = google.visualization.arrayToDataTable([
        ["월", "홀vs홀", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[6], "#FFA7A7", cm[6]],
        [mon[1]+"월", cm[7], "#A566FF", cm[7]],
        [mon[2]+"월", cm[8], "#4374D9", cm[8]]
    ]);
    var chart3 = new google.visualization.ColumnChart(document.getElementById("chart3"));
    chart3.draw(data3, options);
    
    var data4 = google.visualization.arrayToDataTable([
        ["월", "고객평가", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[9], "#FFA7A7", cm[9]],
        [mon[1]+"월", cm[10], "#A566FF", cm[10]],
        [mon[2]+"월", cm[11], "#4374D9", cm[11]]
    ]);
    var chart4 = new google.visualization.ColumnChart(document.getElementById("chart4"));
    chart4.draw(data4, options);
    
    $('.ct:eq(0)').html('<h4 class="cta">'+parseInt(cm[0]+cm[1]+cm[2])+'건</h4><a class="ctb">${hallRank1}등/${hallCount}개의 웨딩홀</a>');
    $('.ct:eq(1)').html('<h4 class="cta">'+parseInt(cm[3]+cm[4]+cm[5])+'건</h4><a class="ctb">${hallRank2}등/${hallCount}개의 웨딩홀</a>');
    $('.ct:eq(2)').html('<h4 class="cta">'+parseInt(cm[6]+cm[7]+cm[8])+'건</h4><a class="ctb">${hallRank3}등/${hallCount}개의 웨딩홀</a>');
    $('.ct:eq(3)').html('<h4 class="cta">'+parseInt(cm[9]+cm[10]+cm[11])+'건</h4><a class="ctb">${hallRank4}등/${hallCount}개의 웨딩홀</a>'); 
  }
  google.charts.setOnLoadCallback(init);
  setInterval(function() { init();}, 0);
</script>
</head>
<body>
<%@include file="/header.jsp"%>
<section>
	<article>
		<p style="background-color: gray; height: 20px; margin: 0px;"></p>
		<div style="margin: 0px auto; width: 950px; background-color: white; padding: 20px;">
		<div id="hn"><h2>${hallName}</h2></div>
		<table class="table table-striped table-bordered">
			<tr>
				<th>상담신청 (단위 : 건)</th>
				<th>홀견적내기 (단위 : 건)</th>
			</tr>
			<tr>
				<td>
					<div id="chart1"></div>
					<p class="ct"></p>
					<input type="button" class="btn btn-info" value="상세정보" onclick="location.href='hallInfo.we?idx=${hallIdx}'"/>
				</td>
				<td>
					<div id="chart2"></div>
					<p class="ct"></p>
					<input type="button" class="btn btn-info" value="견적내기"/>
				</td>
			</tr>
			<tr>
				<th>홀vs홀 (단위 : 건)</th>
				<th>고객평가 (단위 : 건)</th>
			</tr>
			<tr>
				<td>
					<div id="chart3"></div>
					<p class="ct"></p>
					<input type="button" class="btn btn-info" value="비교하기" onclick="location.href='hallCompare.we?idx=${hallIdx}'"/>
				</td>
				<td>
					<div id="chart4"></div>
					<p class="ct"></p>
					<input type="button" class="btn btn-info" value="평가보기"
					onclick="location.href='AllhallList.we?idx=${hallIdx}'"/>
				</td>
			</tr>
		</table>
		</div>
		<p style="background-color: gray; height: 20px; margin: 0px;"></p>
	</article>
</section>
<%@include file="/footer.jsp"%>
</body>
</html>