<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
section {
	width: 800px;
}

#plist {
	border: 0px;
	padding-top: 15px;
	border-spacing: 10px;
	padding-top: 15px;
}

#plist td {
	border-spacing: 2;
	width: 175px;
	height: 150px;
	width: 175px;
}

#plist img {
	width: 175px;
	height: 125px;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td><img src="selectedfucat.jpg" usemap="#worldmap"width="800px;"> <map
					id="worldmap" name="worldmap">
					<area shape="rect" alt="유럽" coords="42,122,90,183"
						href="honeyPackagelist_eu.jsp" target="_self" />
					<area shape="rect" alt="몰디브" coords="181,290,227,353"
						href="honeyPackagelist_moldive.jsp" target="_self" />
					<area shape="rect" alt="푸켓" coords="230,258,277,318"
						href="honeyPackagelist_fucat.jsp" target="_self" />
					<area shape="rect" alt="발리" coords="280,301,316,361"
						href="honeyPackagelist_vali.jsp" target="_self" />
					<area shape="rect" alt="호주" coords="318,345,360,405"
						href="honeyPackagelist_hoju.jsp" target="_self" />
					<area shape="rect" alt="괌" coords="363,227,406,281"
						href="honeyPackagelist_gwam.jsp" target="_self" />
					<area shape="rect" alt="사이판" coords="396,202,436,254"
						href="honeyPackagelist_saipan.jsp" target="_self" />
					<area shape="rect" alt="하와이" coords="481,221,532,276"
						href="honeyPackagelist_hawai.jsp" target="_self" />
				</map></td>
		</tr>
	</table>

	<h2>푸켓</h2>
	<hr>
	<table id="plist">
		<tr>
			<td><div>
					<a href="honeyContent/honeyContent_fuc1.jsp"> <img
						src="imgfuc/fucat1.JPG">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_fuc1.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">더 나카 아일랜드 / 푸켓 <br> 6일 by EnjoyFu
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_fuc2.jsp"> <img
						src="imgfuc/fucat2.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_fuc2.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">열대 삼림 속 궁전 / 푸켓 <br> 6일 by LotteGG
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_fuc3.jsp"> <img
						src="imgfuc/fucat3.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_fuc3.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">멋진 전망의 카리마 / 푸켓 <br> 6일 by 푸켓樂
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_fuc4.jsp"> <img
						src="imgfuc/fucat4.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_fuc4.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">웨스턴 시레이베이 / 푸켓 <br> 4박 6일 by 푸켓愛
					</font><br>
				</div>
				</td>
				
		</tr>

	</table>
</body>
</html>