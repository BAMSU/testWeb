<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
section{
	width:800px;
}
#plist {
	border: 0px; padding-top : 15px;
	border-spacing: 10px;
	padding-top: 15px;
}

#plist td {
	border-spacing: 2; width : 175px;
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
	<section>
		
		<table>
			<tr>
				<td><img src="selecteduro.jpg" usemap="#worldmap"width="800px;"> <map
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

		<h2>유럽</h2>
		<hr>
		<table border="1" id="plist">
			<tr>
				<td><div>
						<a href="honeyContent/honeyContent_eu1.jsp"> <img
							src="imgeu/italy_benetia.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu1.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">물의 도시 베네티아/이태리<br>6박 7일로 정복하기<br></font>
					</div></td>
				<td><div>
						<a href="honeyContent/honeyContent_eu2.jsp"> <img
							src="imgeu/croatia1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu2.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">낭만적인 크로아티아 <br>3박 4일 풀 패키지
						</font>
					</div></td>
				<td><div>
						<a href="honeyContent/honeyContent_eu3.jsp"> <img
							src="imgeu/praha.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu3.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">드라마같은 프라하 / 체코 <br>3박 4일 드라마 속으로
						</font>
					</div></td>
				<td><div>
						<a href="honeyContent/honeyContent_eu4.jsp"> <img
							src="imgeu/paris.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu4.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">프랑스/그리스 산토니니 <br>9일 by 유러브투어
						</font><br>
					</div></td>
			</tr>
			<tr>
				<td><div>
						<a href="honeyContent/honeyContent_eu5.jsp"> <img
							src="imgeu/swis1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu5.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">스위스의 속살 <br>9일 by 투리스타
						</font><br>
					</div></td>
				<td><div>
						<a href="honeyContent/honeyContent_eu6.jsp"> <img
							src="imgeu/spain1.jpg">
						</a>
					</div>
					<div
						onclick="javascript:location.href='honeyContent/honeyContent_eu6.jsp'"
						style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
						<font size="2">정렬과 축제의 도시 / 스페인 <br>9일 by 투어홀릭
						</font><br>
					</div></td>
			</tr>
		</table>

	</section>
</body>
</html>