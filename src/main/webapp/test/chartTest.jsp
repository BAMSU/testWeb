<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  </head>
  <body>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["월", "상담신청수", { role: "style" },{role:"annotation"}],
        ["9월", 8, "red",8],
        ["10월", 10, "blue",10],
        ["11월", 9, "green",9]
      ]);

     /*  var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]); */

      var options = {
        title: "상담신청수",
        width: 500,
        height: 400,
        bar: {groupWidth: "50%"},
        legend: { position: "none" },
        vAxis: {minValue:0,maxValue:20,format:"#"}
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(data, options);
  }
  </script>
<div id="columnchart_values" style="width: 900px; height: 300px;"></div>
</body>
</html>