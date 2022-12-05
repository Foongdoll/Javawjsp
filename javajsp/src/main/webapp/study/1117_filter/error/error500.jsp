<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>500번에러..</title>
  <jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h3>현재 공사중입니다.</h3>
  <p>작업에 불편을 드려셔 죄송합니다.</p>
  <p>빠른시일내에 복구하도록 하겠습니다.</p>
  <p><a href="http://192.168.50.20:9090/javawjsp/" target="_blank">돌아가기</a></p>
  <hr/>
  <p><img src="${pageContext.request.contextPath}/images/1.jpg" width="300px"/></p>
</div>
<p><br/></p>
</body>
</html>