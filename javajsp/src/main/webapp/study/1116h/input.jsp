<%@ page import="study.j1116h.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  ProductVO vo = (ProductVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>input.jsp</title>
  <%@ include file="../../include/bs4.jsp" %>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/study/1116h/product.css">
</head>
<body>
<div class="container">
<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
<div id="header">
  <br/>
	<%@ include file="menu.jsp" %>
</div>
<p><br/></p>
  <h2 class="text-center">판매상품 등록</h2>
  <hr/>
  <div>
    <form name="myform" method="post" action="<%=request.getContextPath()%>/j1116h/Main">
      <div>
        품명 : <input type="text" name="product" id="product" value="냉장고" class="form-control mb-3"/>
      </div>
      <div>
        단가 : <input type="text" name="price" id="price" value="1000" class="form-control mb-3"/>
      </div>
      <div>
        수량 : <input type="text" name="su" id="su" value="2" class="form-control mb-3"/>
      </div>
      <div class="row">
        <div class="col"><input type="submit" value="전송" class="btn btn-success form-control"/></div>
        <div class="col"><input type="reset" value="다시입력" class="btn btn-warning form-control"/></div>
      </div>
    </form>
  </div>
  <hr/>
  <p>판매상품을 등록합니다.</p>
</div>
<p><br/></p>
<div id="footer">
  <%@ include file="footer.jsp" %>
  <br/><%=vo %>
</div>
</body>
</html>