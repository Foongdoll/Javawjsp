<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 앞에서 전송된 값을을 변수에 담아보자... -->
<%-- 
<c:set var="name" value="${param.name}"/>
<c:set var="gender" value="${param.gender}"/>
<c:set var="age" value="${param.age}"/>
<c:set var="job" value="${param.job}"/>
<c:set var="address" value="${param.address}"/>
 --%>

<!-- 자바 클래스를(VO)를 사용하여 넘어온 값들을 저장하고자 한다. -->
<!-- 자바클래스는 jsp액션태그(jsp:useBean)를 사용한다. -->
<jsp:useBean id="vo" class="study.j1117.Test1VO"/>

<!-- 생성된 클래스에 값을 넣을때 : jsp:setProperty태그사용  -->
<!-- 생성된 클래스에 값을 꺼낼때 : jsp:getProperty태그사용  -->
<%-- 
<jsp:setProperty property="name" name="vo"/>
<jsp:setProperty property="gender" name="vo"/>
<jsp:setProperty property="age" name="vo"/>
<jsp:setProperty property="job" name="vo"/>
<jsp:setProperty property="address" name="vo"/>
 --%>
<jsp:setProperty property="*" name="vo"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>testF2Ok.jsp</title>
  <jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>  
<p><br/></p>
<div class="container">
  <h2>전송된 자료 결과 보기2</h2>
  <div>
    <table class="table table-bordered">
      <tr>
        <th>성명</th>
        <td>${name} / <jsp:getProperty property="name" name="vo"/></td>   <%-- <%=vo.getName()%> --%> 
      </tr>
      <tr>
        <th>성별</th>
        <td>${gender} / <jsp:getProperty property="gender" name="vo"/></td> 
      </tr>
      <tr>
        <th>나이</th>
        <td>${age + 1} / <jsp:getProperty property="age" name="vo"/></td> 
      </tr>
      <tr>
        <th>직업</th>
        <td>${job} / <jsp:getProperty property="job" name="vo"/></td> 
      </tr>
      <tr>
        <th>주소</th>
        <td>${address} / <jsp:getProperty property="address" name="vo"/></td> 
      </tr>
    </table>
</div>
<p><br/></p>
</body>
</html>