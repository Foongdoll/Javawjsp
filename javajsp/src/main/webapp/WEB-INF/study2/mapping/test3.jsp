<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test3.jsp</title>
  <jsp:include page="../../../include/bs4.jsp"></jsp:include>
  <script>
    alert("잘못된 URL입니다.");
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 webapp\WEB-INF\study2\mapping\test3.jsp 입니다.</h2>
</div>
<p><br/></p>
</body>
</html>