<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/study/1116h2/product.css">
</head>
<body>
<div class="container">
	<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
  <div id="header">
    <br/>
  	<jsp:include page="menu.jsp"></jsp:include>
  </div>
  <!-- 본문영역 -->
  <div id="content">
	  <br/>
	  <div class="text-center">
		  <h2>이곳은 메인 화면 입니다</h2>
		  <hr/>
		  <p><img src="${pageContext.request.contextPath}/images/1.jpg" width="400px"/></p>
	  </div>
		<br/>
  </div>
  <div id="footer">
    <jsp:include page="footer.jsp"></jsp:include>
    <br/>
  </div>
</div>
</body>
</html>