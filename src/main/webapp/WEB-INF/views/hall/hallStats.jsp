<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀 통계</title>
<style>

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
var cn;
var cm=new Array(12);
var mon=new Array(12);
	$(document).ready(function(){
		init();
	});
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
	}
</script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:['corechart']});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
	  var options = {
	      width: 400,
	      height: 300,
	      bar: {groupWidth: "50%"},
	      legend: {position: "none"},
	      vAxis: {minValue:0,format:"#"}
	    };
	  
    var data1 = google.visualization.arrayToDataTable([
      ["월", "상담신청", {role:"style"},{role:"annotation"}],
      [mon[0]+"월", cm[0], "red", cm[0]],
      [mon[1]+"월", cm[1], "blue", cm[1]],
      [mon[2]+"월", cm[2], "green", cm[2]]
    ]);
    var chart1 = new google.visualization.ColumnChart(document.getElementById("chart1"));
    chart1.draw(data1, options);
    
    var data2 = google.visualization.arrayToDataTable([
        ["월", "홀 견적내기", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[3], "red", cm[3]],
        [mon[1]+"월", cm[4], "blue", cm[4]],
        [mon[2]+"월", cm[5], "green", cm[5]]
    ]);
    var chart2 = new google.visualization.ColumnChart(document.getElementById("chart2"));
    chart2.draw(data2, options);
    
    var data3 = google.visualization.arrayToDataTable([
        ["월", "고객평가", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[6], "red", cm[6]],
        [mon[1]+"월", cm[7], "blue", cm[7]],
        [mon[2]+"월", cm[8], "green", cm[8]]
    ]);
    var chart3 = new google.visualization.ColumnChart(document.getElementById("chart3"));
    chart3.draw(data3, options);
    
    var data4 = google.visualization.arrayToDataTable([
        ["월", "홀vs홀", {role:"style"},{role:"annotation"}],
        [mon[0]+"월", cm[9], "red", cm[9]],
        [mon[1]+"월", cm[10], "blue", cm[10]],
        [mon[2]+"월", cm[11], "green", cm[11]]
    ]);
    var chart4 = new google.visualization.ColumnChart(document.getElementById("chart4"));
    chart4.draw(data4, options);
    
    $('.ct:eq(0)').text(cm[0]+cm[1]+cm[2]+'건/${hallRank1}등/${hallCount}개의 웨딩홀');
    $('.ct:eq(1)').text(cm[3]+cm[4]+cm[5]+'건/${hallRank2}등/${hallCount}개의 웨딩홀');
    $('.ct:eq(2)').text(cm[6]+cm[7]+cm[8]+'건/${hallRank3}등/${hallCount}개의 웨딩홀');
    $('.ct:eq(3)').text(cm[9]+cm[10]+cm[11]+'건/${hallRank4}등/${hallCount}개의 웨딩홀');
}
</script>
</head>
<body>
<header>
<div style="background-color: red; height: 300px;"></div>
</header>
<section>
	<article style="float: left;">
		<div style="background-color: yellow; width: 100px; height: 700px;"></div>
	</article>
	<article style="float: left;">
		<h2>${hallName}</h2>
		<table>
			<tr>
				<th>상담신청</th>
				<th>홀견적내기</th>
			</tr>
			<tr>
				<td>
					<div id="chart1" style="width: 400px; height: 300px;"></div>
					<a class="ct"></a><br>
					<input type="button" value="상세정보" onclick="location.href='hallInfo.we?idx=${hallIdx}'"/>
				</td>
				<td>
					<div id="chart2" style="width: 400px; height: 300px;"></div>
					<a class="ct"></a><br>
					<input type="button" value="견적내기"/>
				</td>
			</tr>
			<tr>
				<th>고객평가</th>
				<th>홀vs홀</th>
			</tr>
			<tr>
				<td>
					<div id="chart3" style="width: 400px; height: 300px;"></div>
					<a class="ct"></a><br>
					<input type="button" value="평가보기"/>
				</td>
				<td>
					<div id="chart4" style="width: 400px; height: 300px;"></div>
					<a class="ct"></a><br>
					<input type="button" value="비교하기" onclick="location.href='hallCompare.we?idx=${hallIdx}'"/>
				</td>
			</tr>
		</table>
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