<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>el3.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>EL을 통한 배열처리2</h2>
  <hr/>
<%
  int[] num1 = new int[5];
  for(int i=0; i<num1.length; i++) {
  	num1[i] = (i+1) * 10;
  }
  pageContext.setAttribute("num1", num1);
  
  int[] num2 = {10,2,3,4,50};
  pageContext.setAttribute("num2", num2);
%>

  <h4>num1배열에 담긴값을 forEach를 통한 출력</h4>
  <c:forEach var="num" items="${num1}" varStatus="st">
    ${st.count}(num1[${st.index}]). ${num}<br/>
  </c:forEach>
  <br/>
  <h4>EL에서의 연산처리(연산자 사용)</h4>
  1. num1[0] == num2[0] : ${num1[0] == num2[0]}<br/>
  2. num1[1] == num2[1] : ${num1[1] == num2[1]}<br/>
  3. num1[1] eq num2[1] : ${num1[1] eq num2[1]}<br/>
  4. num1[1] != num2[1] : ${num1[1] != num2[1]}<br/>
  5. num1[1] ne num2[1] : ${num1[1] ne num2[1]}<br/>
  6. num1[1] > num2[1] : ${num1[1] > num2[1]}<br/>
  7. num1[1] gt num2[1] : ${num1[1] gt num2[1]}<br/>
  8. num1[1] < num2[1] : ${num1[1] < num2[1]}<br/>
  9. num1[1] lt num2[1] : ${num1[1] lt num2[1]}<br/>
  10. num1[1] >= num2[1] : ${num1[1] >= num2[1]}<br/>
  11. num1[1] ge num2[1] : ${num1[1] ge num2[1]}<br/>
  12. num1[1] <= num2[1] : ${num1[1] <= num2[1]}<br/>
  13. num1[1] le num2[1] : ${num1[1] le num2[1]}<br/>
  <hr/>
<%
  ArrayList<String> arrVos = new ArrayList<>();
  arrVos.add("홍길동");
  arrVos.add("김말숙");
  arrVos.add("이기자");
  arrVos.add("소나무");
  arrVos.add("고인돌");
  
  pageContext.setAttribute("arrVos", arrVos);
%>
  <h3>EL표기법을 통한 객체(ArrayList) 출력</h3>
  arrVos : ${arrVos}<br/>
  arrVos[2] = ${arrVos[2]}<br/>
  <c:forEach var="vo" items="${arrVos}" varStatus="st">
    ${st.count}. ${vo}<br/>
  </c:forEach>
  <hr/>
<%
  HashMap<String, String> mapVos = new HashMap<>();
  mapVos.put("성명", "홍길순");
  mapVos.put("나이", "25");
  mapVos.put("주소", "서울");
  
  pageContext.setAttribute("mapVos", mapVos);
%>
  <h3>EL표기법으로 객체(map) 출력</h3>
  mapVos : ${mapVos}<br/>
  mapVos["성명"] : ${mapVos["성명"]}<br/>
  <hr/>
<%
  pageContext.setAttribute("var1", "널값처리");
  pageContext.setAttribute("var2", "");
  pageContext.setAttribute("var3", null);
%>
  <h4>Null값의 처리</h4>
  var1 : ${var1}<br/>
  var2 : ${var2}<br/>
  var3 : ${var3}<br/>
  == 비교1 : ${var1 == ""}<br/>
  == 비교2 : ${var2 == ""}<br/>
  == 비교3 : ${var3 == ""}<br/>
  null 비교1 : ${var1 == null}<br/>
  null 비교2 : ${var2 == null}<br/>
  null 비교3 : ${var3 == null}<br/>
  
  연산자 : empty, !empty (공백과 null을 같은값으로 취급한다.)<br/>
  "" 와 empty 비교1 : ${empty var1}<br/>
  "" 와 empty 비교2 : ${empty var2}<br/>
  "" 와 empty 비교3 : ${empty var3}<br/>
  null 과 !empty 비교1 : ${!empty var1}<br/>
  null 과 !empty 비교2 : ${!empty var2}<br/>
  null 과 !empty 비교3 : ${!empty var3}<br/>
</div>
<p><br/></p>
</body>
</html>