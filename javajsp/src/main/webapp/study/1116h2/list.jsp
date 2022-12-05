<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>list.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/study/1116h2/product.css">
</head>
<body>
<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
<div id="header">
  <br/>
	<jsp:include page="menu.jsp"></jsp:include>
</div>
<p><br/></p>
<div class="container">
  <h2>상품 판매 결과 화면</h2>
  <hr/>
  <div>
      품명 : <input type="text" name="product" id="product" value="${vo.product}" readonly class="form-control mb-3"/>
      </div>
      <div>
      단가 : <input type="text" name="price" id="price" value="${vo.price}" readonly class="form-control mb-3"/>
      </div>
      <div>
      수량 : <input type="text" name="su" id="su" value="${vo.su}" readonly class="form-control mb-3"/>
      </div>
      <div>
      금액 : <input type="text" name="su" id="su" value="${vo.kumaek}" readonly class="form-control mb-3"/>
      </div>
  <hr/>
  <p>좋은 시간 되세요</p>
</div>
<p><br/></p>
<div id="footer">
  <jsp:include page="footer.jsp"></jsp:include>
  <br/>
</div>
</body>
</html>