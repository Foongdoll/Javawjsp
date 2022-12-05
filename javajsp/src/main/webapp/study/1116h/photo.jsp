<%@ page import="study.j1116h.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  ProductVO vo = (ProductVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>photo.jsp</title>
  <%@ include file="../../include/bs4.jsp" %>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/study/1116h/product.css">
</head>
<body>
<!-- 헤더영역('메뉴/로고' 를 표시한다. -->
<div id="header">
  <br/>
	<%@ include file="menu.jsp" %>
</div>
<div class="container text-center">
<p><br/></p>
  <h2>이곳은 포토갤러리 입니다.</h2>
  <hr/>
  <p>
	  <img src="<%=request.getContextPath()%>/images/3.jpg" width="150px" class="m-2"/>
	  <img src="<%=request.getContextPath()%>/images/4.jpg" width="150px" class="m-2"/>
	  <img src="<%=request.getContextPath()%>/images/5.jpg" width="150px" class="m-2"/><br/>
	  <img src="<%=request.getContextPath()%>/images/1.jpg" width="150px" class="m-2"/>
	  <img src="<%=request.getContextPath()%>/images/2.jpg" width="150px" class="m-2"/>
	  <img src="<%=request.getContextPath()%>/images/3.jpg" width="150px" class="m-2"/><br/>
	</p>
  <hr/>
  <p>재미난 시간 되세요</p>
</div>
<div id="footer">
  <%@ include file="footer.jsp" %>
  <br/><%=vo %>
</div>
</body>
</html>