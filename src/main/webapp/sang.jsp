<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
var sub_subway = [
[['']]
//서울 
,[['']
,['','가능','가산디지털단지','간석','개봉','관악','광명','구로','구일','군포','금정','금천구청','남영','노량진','녹양','녹천','당정','대방','덕계','덕정','도봉','도봉산','도원','도화','독산','동대문','동두천','동두천중앙','동묘앞','동암','동인천','두정','망월사','명학','방학','배방','백운','병점','보산','봉명','부개','부천','부평','서동탄','서울역','서정리','석계','석수','성균관대','성북','성환','세류','세마','소사','소요산','송내','송탄','수원','시청','신길','신도림','신설동','신이문','신창','쌍용','아산','안양','양주','역곡','영등포','오류동','오산대','오산대','온수','온양온천','외대앞','용산','월계','의왕','의정부','인천','제기동','제물포','종각','종로3가','종로5가','주안','중동','지제','지행','직산','진위','창동','천안','청량리','탕정','평택','화서','회기','회룡']
,['','강남','강변','건대입구','교대','구로디지털단지','구의','까치산','낙성대','당산','대림','도림천','동대문역사문화공원','뚝섬','문래','방배','봉천','사당','삼성','상왕십리','서울대입구','서초','선릉','성수','시청','신담','신당','신대방','신도림','신림','신설동','신정네거리','신천','신촌','아현','양천구청','역삼','영등포구청','왕십리','용담','용두','을지로3가','을지로4가','을지로입구','이대','잠실','잠실나루','종합운동장','충정로','한양대','합정','홍대입구']
,['','가락시장','경복궁','경찰병원','고속터미널','교대','구파발','금호','남부터미널','녹번','대곡','대청','대치','대화','도곡','독립문','동대입구','마두','매봉','무악재','백석','불광','삼송','수서','신사','안국','압구정','약수','양재','연신내','오금','옥수','원당','을지로3가','일원','잠원','정발산','종로3가','주엽','지축','충무로','학여울','홍제','화정']
,['','경마공원','고잔','공단','과천','금정','길음','남태령','노원','당고개','대공원','대야미','동대문','동대문역사문화공원','동작','명동','미아','미아삼거리','반월','범계','사당','산본','삼각지','상계','상록수','서울역','선바위','성신여대입구','수리산','수유','숙대입구','신길온천','신용산','쌍문','안산','오이도','이촌','인덕원','정부과천청사','정왕','중앙','창동','총신대입구','충무로','평촌','한대앞','한성대입구','혜화','회현']
,['','강동','개롱','개화산','거여','고덕','공덕','광나루','광화문','군자','굽은다리','길동','김포공항','까치산','담십리','동대문역사문화공원','둔촌동','마곡','마장','마천','마포','명일','목동','발산','방이','방화','상일동','서대문','송정','신금호','신길','신정','아차산','애오개','양평','여의나루','여의도','영등포구청','영등포시장','오금','오목교','올림픽공원','왕십리','우장산','을지로4가','장한평','종로3가','천호','청구','충정로','행당','화곡']
,['','고려대','공덕','광흥창','구산','녹사평','대흥','독바위','돌곶이','동묘앞','디지털미디어시티','마포구청','망원','버티고개','보문','봉화산','불광','삼각지','상수','상월곡','새절','석계','신당','악수','안암','역촌','연신내','월곡','월드컵경기장','응암','이태원','증산','창신','청구','태릉입구','한강진','합정','화랑대','효창공원앞']
,['','가산디지털단지','강남구청','건대입구','고속터미널','공릉','광명사거리','군자','남구로','남성','내방','노원','논현','대림','도봉산','뚝섬유원지','마들','먹골','면목','반포','보라매','사가정','상도','상봉','수락산','숭실대입구','신대방삼거리','신풍','어린이대공원','온수','용마산','이수','장승배기','장암','중계','중곡','중화','천왕','철산','청담','태릉입구','하계','학동']
,['','가락시장','강동구청','남한산성입구','단대오거리','모란','몽촌토성','문정','복정','산성','석촌','송파','수진','신흥','암사','잠실','장지','천호']
,['','가양','개화','고속터미널','공항시장','구반포','국회의사당','김포공항','노들','노량진','당산','동작','등촌','마곡나루','사평','샛강','선유도','신논현','신목동','신반포','신방화','양천향교','여의도','염창','증미','흑석']
]

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
</head>
<body>

  <div data-role="fieldcontain">
   <select name='subway' id='subway' data-theme='a'>
   </select>
   <select name='main_subway' id='main_subway' data-theme='a'>
   </select>
   <select name='sub_subway' id='sub_subway' data-theme='a'>
   </select>
  </div>    

	<nav id="navcontainer">
		<ul id="navlist">
			<li><p>웨딩홀 검색</p></li>
			<li><p>홀 랭킹</p></li>
			<li><p>홀vs홀</p></li>
			<li><p>홀 견적내기</p></li>
		</ul>
	</nav>

	<h2>웨딩홀</h2>
	<div>
	<ul>
	<li>웨딩홀 상세검색</li>
	<li><a href="/hall/hallmap.jsp">구별 검색</a></li>
	<li><a href="/hall/hallsubway.jsp">지하철 검색</a></li>
	</ul>
	</div>
	<form name="search" method="post" action="">
		<table>

			<tr>
				<th>웨딩시설구분</th>
				<td><input type="checkbox" name="hall_style" value="01">
					일반형</td>
				<td><input type="checkbox" name="hall_style" value="02">
					하우스</td>

				<td><input type="checkbox" name="hall_style" value="03">
					채플</td>

				<td><input type="checkbox" name="hall_style" value="04">
					야외</td>

				<td><input type="checkbox" name="hall_style" value="05">
					전통</td>
			</tr>



			<tr>
				<th>웨딩홀형태</th>

				<td><input type="checkbox" name="hall_type" value="01">
					일반형</td>

				<td><input type="checkbox" name="hall_type" value="02">
					호텔형</td>

				<td><input type="checkbox" name="hall_type" value="03">
					종교예식</td>

				<td><input type="checkbox" name="hall_type" value="04">
					기타</td>
			</tr>

			<tr>
				<th>식사메뉴</th>

				<td><input type="checkbox" name="food_type" value="01">
					뷔페</td>

				<td><input type="checkbox" name="food_type" value="02">
					한식</td>

				<td><input type="checkbox" name="food_type" value="03">
					양식</td>

				<td><input type="checkbox" name="food_type" value="04">
					중/일식</td>

				<td><input type="checkbox" name="food_type" value="05">
					기타</td>

			</tr>

			<tr>
				<th>식대가격</th>

				<td><input type="checkbox" name="price" value="01">
					30,000원</td>

				<td><input type="checkbox" name="price" value="02">
					30,000~40,000원</td>

				<td><input type="checkbox" name="price" value="03">
					40,000원~50,000원</td>

				<td><input type="checkbox" name="price" value="04">
					50,000원~70,000원</td>

				<td><input type="checkbox" name="price" value="05">
					70,000원이상</td>
			</tr>


			<tr>
				<th>하객수</th>

				<td><input type="checkbox" name="nowrap" value="01">
					50명 미만</td>

				<td><input type="checkbox" name="nowrap" value="02">
					50명~100명</td>

				<td><input type="checkbox" name="nowrap" value="03">
					100명~200명</td>

				<td><input type="checkbox" name="nowrap" value="04">
					200명 이상</td>

			</tr>


			<tr>
				<th>웨딩홀명</th>
				<td><input type="text" name="hall_name"></td>
			</tr>
			<tr>
				<td rowspan="1"><input type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	
	<label>추천 웨딩홀</label>
	
	<table border="1">
	<tr>
	<th>홀 이미지</th>
	<td>홀 설명</td>
	</tr>
	</table>
	
	<label>검색 결과</label>
	<table>
	<tr>
	<td>결과</td>
	</tr>
	</table>
</body>
</html>