<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>성 적 자 료</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/j1116/Test2/4">
    <p>성명 : <input type="text" name="name" value="홍길동"/></p>
    <p>학번 : <input type="text" name="hakbun" value="a1234"/></p>
    <p>국어 : <input type="number" name="kor" value="100"/></p>
    <p>영어 : <input type="number" name="eng" value="90"/></p>
    <p>수학 : <input type="number" name="mat" value="80"/></p>
    <p>사회 : <input type="number" name="soc" value="70"/></p>
    <p>과학 : <input type="number" name="sci" value="60"/></p>
    <p>
      <input type="submit" value="전송" class="btn btn-success"/>
      <input type="reset" value="다시입력" class="btn btn-warning"/>
    </p>
  </form>
</div>
<p><br/></p>
</body>
</html>