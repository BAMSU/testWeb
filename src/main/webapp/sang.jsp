<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD

<script type="text/javascript">
var subway = ['','서울','인천','대전','광주','대구','부산'];
var main_subway =[['']
,['','1호선','2호선','3호선','4호선','5호선','6호선','7호선','8호선','9호선']
,['','1호선']
,['','1호선']
,['','1호선']
,['','1호선','2호선']
,['','1호선','2호선','3호선','4호선','부산-김해 경전철']
];

for(var i=0;i<subway.length;i++){
 if(i == 0){
  $("#subway").append("<option value='"+subway[i]+"' selected>선택하세요</option>");
 }else{
  $("#subway").append("<option value='"+subway[i]+"'>"+subway[i]+"</option>"); 
 }
}
$("#main_subway").append("<option value='' selected>선택하세요</option>"); 
$("#sub_subway").append("<option value='' selected>선택하세요</option>"); 

$('#subway').change(function(){
 $("#main_subway").empty();
 $("#sub_subway").empty();
 $("#sub_subway").append("<option value='' selected>선택하세요</option>"); 
 var subway_index = $("#subway option").index($("#subway option:selected"));
 var main_subway_array = main_subway[subway_index];
 for(var i=0;i<main_subway_array.length;i++){
  if(i==0){
   $("#main_subway").append("<option value='"+main_subway_array[i]+"' selected>선택하세요</option>").attr("selected", true);
  }else{
   $("#main_subway").append("<option value='"+main_subway_array[i]+"'>"+main_subway_array[i]+"</option>");
  }
 }
 $('select').selectmenu("refresh");
});
$('#main_subway').change(function(){
 $("#sub_subway").empty();
 var subway_index = $("#subway option").index($("#subway option:selected"));
 var main_subway_index = $("#main_subway option").index($("#main_subway option:selected"));
 var sub_subway_array = sub_subway[subway_index][main_subway_index];
 for(var i=0;i<sub_subway_array.length;i++){
  if(i==0){
   $("#sub_subway").append("<option value='"+sub_subway_array[i]+"' selected>선택하세요</option>").attr("selected", true);
  }else{
   $("#sub_subway").append("<option value='"+sub_subway_array[i]+"'>"+sub_subway_array[i]+"</option>");
  }
 }
 $('select').selectmenu("refresh");
});









</script>
<style type="text/css">
p {
	margin: 0px;
	padding: 0px;
}

#navcontainer {
	background: #a2ce81; /*background: #f0e7d7; 모든 카테고리 후경색*/
	width: 176px;
	height: 280px;
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	font-family: georgia, serif;
	font-size: 13px;
	text-align: center;
	text-transform: uppercase; /*대문자*/
}

ul#navlist {
	text-align: center;
	list-style: none;
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 176px;
}

ul#navlist li {
	display: block;
	margin: 0;
	padding: 0;
}

ul#navlist li a {
	display: block;
	width: 176px;
	padding: 0.5em 0.5em 0.5em 2em;
	border-width: 1px;
	border-color: #ffe #aaab9c #ccc #fff;
	border-style: solid;
	color: #777;
	/*color: #777;background: #f7f2ea; border-color: #ffe #aaab9c #ccc #fff;*/
	text-decoration: none;
	background: #dae2ca; /*후경색 */
}

#navcontainer>ul#navlist li a {
	width: auto;
}

ul#navlist li a:hover, ul#navlist li#active a:hover {
	color: #800000; /*마우스오버시 */
	background: transparent;
	border-color: #aaab9c #fff #fff #ccc;
	/* color: #800000; border-color: #aaab9c #fff #fff #ccc;*/
}
</style>
=======
	
>>>>>>> branch 'master' of https://github.com/BAMSU/testWeb.git
</head>
<body>

   

</body>
</html>