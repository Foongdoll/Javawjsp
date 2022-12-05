<%@ page import="study.j1116h.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  ProductVO vo = (ProductVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>list.jsp</title>
  <%@ include file="../../include/bs4.jsp" %>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/study/1116h/product.css">
</head>
<body>
<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
<div id="header">
  <br/>
	<%@ include file="menu.jsp" %>
</div>
<p><br/></p>
<div class="container">
  <h2>상품 판매 결과 화면</h2>
  <hr/>
  <div>
      품명 : <input type="text" name="product" id="product" value="<%=vo.getProduct()%>" readonly class="form-control mb-3"/>
      </div>
      <div>
      단가 : <input type="text" name="price" id="price" value="<%=vo.getPrice()%>" readonly class="form-control mb-3"/>
      </div>
      <div>
      수량 : <input type="text" name="su" id="su" value="<%=vo.getSu()%>" readonly class="form-control mb-3"/>
      </div>
      <div>
      금액 : <input type="text" name="su" id="su" value="<%=vo.getKumaek()%>" readonly class="form-control mb-3"/>
      </div>
  <hr/>
  <p>좋은 시간 되세요</p>
</div>
<p><br/></p>
<div id="footer">
  <%@ include file="footer.jsp" %>
  <br/><%=vo %>
</div>
</body>
</html>