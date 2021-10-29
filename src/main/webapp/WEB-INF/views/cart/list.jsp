<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions" %>

 
<!DOCTYPE html> 
<html> 
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
   <script type="text/javascript">
     function read(contentsno){
       var url = "read";
       url += "?contentsno="+contentsno;
       url += "&col=${col}";
       url += "&word=${word}";
       url += "&nowPage=${nowPage}";
       location.href=url;
 
     }
     
     function fileDown(filename){
         var url = "fileDown";
         url += "?filename="+filename;
         location.href=url;
        }
  
  </script>
 
</head>
<body>
<div class="container">
 
  <h2>장바 구니</h2>
  <form class="form-inline" action="./list">
   
  <table class="table table-striped">
   <thead>
    <tr>
    <th>번호</th>
    <th>상품이미지</th>
    <th>상품명</th>
    <th>가격</th>
    <th>재고</th>
    <th>삭제</th>
    </tr>
   </thead>
   <tbody>
 
<c:choose>   
<c:when test="${empty list}">
   <tr><td colspan="6">등록된 상품이 없습니다.</td>
</c:when>
<c:otherwise>
  
   <c:forEach var="dto" items="${list}"> 
   
   <tr>
    <td>${dto.contentsno}</td>
    <td>
    <img src="/pstorage/${dto.filename}"  class="img-rounded" width="100px" height="100px">
    </td>
    <td>
    <a href="javascript:read('${dto.contentsno}')">${dto.pname}</a>
    <c:if test="${util:newImg(fn:substring(dto.rdate,0,10)) }">
         <img src="/images/new.gif"> 
    </c:if> 
    
    </td>
    <td>${dto.price}</td>
    <td>${dto.rdate}</td>
    <td>${dto.stock}</td>
    <td> <a href="./update/${dto.contentsno }">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        /
        <a href="./delete/${dto.contentsno }">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
        /
        <a href="./updateFile/${dto.contentsno }/${dto.filename}">
          <span class="glyphicon glyphicon-picture"></span>
        </a>     
    </td>
   </tr>
   </c:forEach>
   </c:otherwise>
   </c:choose>
 
   </tbody>
  
  </table>
  <div>
      ${paging}
  </div>
</div>
</body> 
</html> 
