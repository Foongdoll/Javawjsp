<%@ page import="study.j1116h.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  ProductVO vo = (ProductVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main.jsp</title>
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
  <!-- 본문영역 -->
  <div id="content">
	  <br/>
	  <div class="text-center">
		  <h2>이곳은 메인 화면 입니다</h2>
		  <hr/>
		  <p><img src="<%=request.getContextPath()%>/images/1.jpg" width="400px"/></p>
	  </div>
		<br/>
  </div>
  <div id="footer">
    <%@ include file="footer.jsp" %>
    <br/><%=vo %>
  </div>
</div>
</body>
</html>