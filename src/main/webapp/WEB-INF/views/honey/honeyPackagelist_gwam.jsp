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
	<table>
		<tr>
			<td>
<img src="selectedgwam.jpg" usemap="#worldmap" width="800px;"> <map
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
				</map>

	</td>
		</tr>
	</table>

	<h2>괌</h2>
	<hr>
	<table id="plist">
	<tr><td><div>
					<a href="honeyContent/honeyContent_gwam1.jsp"> <img
						src="imggwam/gwam1.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_gwam1.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">오션뷰 힐튼 메인타워/ 괌 <br> 5일 by LotteGG
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_gwam2.jsp"> <img
						src="imggwam/gwam2.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_gwam2.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">오션뷰 퓨전 마이어 / 괌 <br> 6일 by 다낭
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_gwam3.jsp"> <img
						src="imggwam/gwam3.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_gwam3.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">나만리트리트 풀빌라 / 괌 <br> 6일 by 다낭
					</font><br>
				</div>
				</td>
				<td><div>
					<a href="honeyContent/honeyContent_gwam4.jsp"> <img
						src="imggwam/gwam4.jpg">
					</a>
				</div>
				<div
					onclick="javascript:location.href='honeyContent/honeyContent_gwam4.jsp'"
					style="cursor: pointer; padding-left: 10px; padding-top: 5px; padding-bottom: 5px;">
					<font size="2">하얏트리젠시 오션룸 / 괌 <br> 4박 6일 by 하나투어
					</font><br>
				</div>
				</td></tr>
	</table>
</body>
</html>