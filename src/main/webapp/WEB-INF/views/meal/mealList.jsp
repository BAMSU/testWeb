<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap2.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="bootstrap/css/font-awesome2.min.css"
   media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="bootstrap/css/style2.css" media="screen"
   title="no title" charset="utf-8">
</head>
<body>
<%@include file="/adminheader.jsp"%>

<article class="container">

      <div class="col-md-12">
         <div class="page-header">
            <h1>
               견적서 <small>끄앗 폼!</small>
            </h1>
         </div>
         
         <c:if test="${empty list}">
	<input type="hidden" name="idx" value="${idx}">
		<c:url var="contentUrl4" value="insertMeal.we"><c:param name="idx">${idx}</c:param></c:url>
		<h3 align="center"><a href="${contentUrl4}">견적서를 추가해주세요.(클릭)</a></h3>
	</c:if>


         
         <form class="form-horizontal" name = "fm" action="updateMeal.we" method="POST">
         <c:forEach var="dto" items="${list}">
         <h3 align="center">웨딩홀 견적서</h3>
            <div class="form-group">
               <label class="col-sm-3 control-label">홀 이름 </label>
				<input type="hidden" name="hall_idx" value="${dto.hall_idx}" required>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="text" name="hall_name" value="${dto.hall_name}" required>
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label">하객수 </label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="number" name="est_guest" value="${dto.est_guest}" required>
               </div>
            </div>
            
            
             <div class="form-group">
               <label class="col-sm-3 control-label">대관비 </label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="hall_price1" value="${dto.hall_price1}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">설명 </label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="text" name="hall_content" value="${dto.hall_content}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">Ourfit</label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="number" name="ourfit_price" value="${dto.ourfit_price}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사종류</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal" value="${dto.meal}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사비(원)</label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="meal_price" value="${dto.meal_price}" required>
               </div>
            </div>
            
            
             <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사설명</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_content" value="${dto.meal_content}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사종류</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_1" value="${dto.meal_1}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사비(원)</label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="meal_price2" value="${dto.meal_price2}" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사설명</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_content2" value="${dto.meal_content2}" required>
               </div>
            </div>
            
             <div class="form-group">
          <div class="col-sm-12 text-center">
          <input class="btn btn-primary" type="submit" value="견적서수정하기">
		<input class="btn btn-primary" type="button" onclick="javascript:location.href='wdList.we'" value="웨딩홀 목록으로">
          </div>
        </div>
        </c:forEach>
         </form>
         
         
      </div>

   </article>
</body>

</html>