<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
</head>
<body>

<div class="container">
  <div class="row">
  <div class="col-sm-3">
  <h3><span class="glyphicon glyphicon-hand-right"></span> 제품 상세 페이지</h3>
  
  <img class="img-rounded" src="/pstorage/${dto.filename}" style="width:280px">
   
   <button type="button" class="btn btn-default" onclick="location.href='order'" >주문</button>
   <button type="button" class="btn btn-default" onclick="location.href='cart'">장바구니</button>
    
  </div>
  
  <div class="col-sm-6">
  <h3><span class="glyphicon glyphicon-gift"></span> 제품 상세 내용</h3>
  <ul class="list-group">
    <div class="caption">
    <p>상품명:${dto.pname}</p>
    <p>가격:${dto.price}</p>
    <p>상세정보:${dto.detail}</p>
    <p>재고:${dto.stock}</p>
    
   
  </div>
  </ul>
  </div>
  </div>
</div>
 
</body>
</html>