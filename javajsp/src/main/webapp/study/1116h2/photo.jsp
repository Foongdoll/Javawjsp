<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>photo.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/study/1116h2/product.css">
</head>
<body>
<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
<div id="header">
  <br/>
	<jsp:include page="menu.jsp"></jsp:include>
</div>
<div class="container text-center">
<p><br/></p>
  <h2>이곳은 포토갤러리 입니다.</h2>
  <hr/>
  <p>
	  <img src="${pageContext.request.contextPath}/images/3.jpg" width="150px" class="m-2"/>
	  <img src="${pageContext.request.contextPath}/images/4.jpg" width="150px" class="m-2"/>
	  <img src="${pageContext.request.contextPath}/images/5.jpg" width="150px" class="m-2"/><br/>
	  <img src="${pageContext.request.contextPath}/images/1.jpg" width="150px" class="m-2"/>
	  <img src="${pageContext.request.contextPath}/images/2.jpg" width="150px" class="m-2"/>
	  <img src="${pageContext.request.contextPath}/images/3.jpg" width="150px" class="m-2"/><br/>
	</p>
  <hr/>
  <p>재미난 시간 되세요</p>
</div>
<div id="footer">
  <jsp:include page="footer.jsp"></jsp:include>
  <br/>
</div>
</body>
</html>