<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function check() {
	window.open('login.do', 'login', 'width=400px, height=200px');
}
function show() {
	sendRequest('empAjaxList.do', null, showResult, 'GET');
}
function showResult() {
	if(XHR.readyState==4){
		if(XHR.status==200) {
			var data = XHR.responseText;
			var idTag=document.all.ajaxid;
			idTag.innerHTML=data;
		}
	}
}

function show2() {
	sendRequest('empJsonList.do', null, showResult2, 'GET');
}
function showResult2() {
	if(XHR.readyState==4) {
		if(XHR.status==200) {
			var data=eval('('+(XHR.responseText)+')');
			
			var msg='총사원수:'+data.emps.length+'명\n';
			
			for(var i=0;i<data.emps.length;i++) {
				var emp=data.emps[i];
				msg+='이름:'+emp.name+' 이메일:'+emp.email+' 부서명:'+emp.dept+'\n';
			}
			
			window.alert(msg);
		}
	}
}
</script>
</head>
<body>
	<h2>index.jsp</h2>
	<ul>
		<li><a href="memberList.do">회원정보보기(yong)</a></li>
		<li><a href="javascript:show()">ajax를 이용한 모든 사원 보기</a></li>
		<li><div id="ajaxid"></div></li>
		<li><a href="javascript:show2()">json을 이용한 모든 사원 보기</a></li>
		<li><a href="bbsList.do">자유게시판</a></li>
		<li><a href="emp.do">마지막 사원관리 프로그램</a></li>
		<li><a href="fileDownList.do">파일 다운로드 테스트</a></li>
		<li><a href="fileUploadForm.do">파일 업로드 테스트</a></li>
		<li><a href="hello.do">Spring MVC Test</a></li>
		<li><a href="memoWrite.do">메모작성하기</a></li>
		<li><a href="order.do">매장물품 주문하기</a></li>
		<li><a href="paramTest.do?str=spring&idx=3">파라미터 테스트</a></li>
		<li><a href="cookieView.do">쿠키확인하기</a></li>
		<li><a href="cookieMake.do">쿠키생성하기</a></li>
		<li><a href="sessionView.do">세션확인하기</a></li>
		<li><a href="sessionMake.do">세션저장하기</a></li>
		<li><a href="viewTest.do">명시적 뷰 지정방법</a></li>
		<li><a href="viewTest2.do">명시적 뷰 지정방법2</a></li>
		<li><a href="view/viewOk.do">묵시적 뷰 지정방법</a></li>
		<li><a href="viewTest4.do">또 다른 명령어 호출방법</a></li>
		<li><a href="modelTest1.do">모델테스트1(Map)</a></li>
		<li><a href="modelTest2.do">모델테스트2(Model)</a></li>
		<li><a href="modelTest3.do">모델테스트3(ModelMap)</a></li>
		<li><a href="model/modelOk.do">모델테스트4(map반환)</a></li>
		<li><a href="model/modelOk.do">모델테스트5(model반환)</a></li>
		<li><a href="aniFind1.do">애니메이션 검색</a></li>
		<li><a href="join.do">회원가입</a></li>
		<c:choose>
			<c:when test="${empty sessionScope.name}">
				<li><a href="javascript:check()">로그인</a></li>
			</c:when>
			<c:otherwise>
				<li>${sessionScope.name}님로그인중.. | <a
					href="javascript:location.href='logout.do'">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
		
	</ul>
</body>
</html>