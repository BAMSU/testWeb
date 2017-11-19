<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="song">
<article class="container" >

      <div class="col-md-12">
         <div class="page-header">
            <h1>
               견적서 <small>끄앗 폼!</small>
            </h1>
         </div>
	
	


         
         <form class="form-horizontal" name = "fm" action="insertMeal.we" method="POST">
         <h3 align="center">웨딩홀 견적서</h3>
         <input type="hidden" name="hall_idx" value="${idx}">
            <div class="form-group">
               <label class="col-sm-3 control-label">홀 이름 </label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="text" name="hall_name" placeholder="고가의 뷔페" required>
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label">하객수 </label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="number" name="est_guest" required>
               </div>
            </div>
            
            
             <div class="form-group">
               <label class="col-sm-3 control-label">대관비 </label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="hall_price1" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">설명 </label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="text" name="hall_content" placeholder="꽃장식, 연출료, 예식홀, 폐백실 및 기타 부대시설 사용, 혼구용품 포함" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">Ourfit</label>
               <div class="col-sm-6">
                     
                     <input class="form-control" type="number" name="ourfit_price" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사종류</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal" placeholder="뷔페" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사비(원)</label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="meal_price" required>
               </div>
            </div>
            
            
             <div class="form-group">
               <label class="col-sm-3 control-label">룸1 식사설명</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_content" placeholder="약 100여 가지 뷔페: 한식, 일식, 중식, 양식 즉석요리, 디저트, 주류, 음료 포함" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사종류</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_1" placeholder="뷔페" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사비(원)</label>
               <div class="col-sm-6">
                     <input class="form-control" type="number" name="meal_price2" required>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label">룸2 식사설명</label>
               <div class="col-sm-6">
                     <input class="form-control" type="text" name="meal_content2" placeholder="약 100여 가지 뷔페: 한식, 일식, 중식, 양식 즉석요리, 디저트, 주류, 음료 포함" required> <br>
               </div>
            </div>
            
             <div class="form-group">
          <div class="col-sm-12 text-center">
		
		
		<input class="btn btn-primary" type="submit" value="견석서 등록하기">
		<input class="btn btn-primary" type="button" onclick="javascript:location.href='wdList.we'" value="웨딩홀 목록으로">
          </div>
        </div>
         </form>
         
      </div>

   </article></div><%@include file="/footer.jsp"%>
</body>
</html>