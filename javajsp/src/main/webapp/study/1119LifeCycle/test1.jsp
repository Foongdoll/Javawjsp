<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>JSP/Servlet Life Cycle 연습</h2>
  <%-- <form name="myform" method="post" action="${pageContext.request.contextPath}/j1119/LifeCycle"> --%>
  <form name="myform" method="post" action="${pageContext.request.contextPath}/j1119/LifeCycle2">
    <table class="table">
      <tr>
        <th>제목</th>
        <td><input type="text" name="title" size="60" value="Servlet 메소드의 생명주기" autofocus /></td>
      </tr>
      <tr>
        <th>내용</th>
      	<td><textarea rows="5" cols="60" name="content">서블릿 메소드 생명주기 연습입니다.</textarea></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="전 송" class="btn btn-success form-control"/></td>
      </tr>
    </table>
  </form>
</div>
<p><br/></p>
</body>
</html>