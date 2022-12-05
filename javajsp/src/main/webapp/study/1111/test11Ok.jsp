<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String name = request.getParameter("name");
  int age = Integer.parseInt(request.getParameter("age"));
  String[] hobbys = request.getParameterValues("hobby");
  String gender = request.getParameter("gender");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>전송된 값 출력하기</h2>
  <table class="table table-bordered">
    <tr>
      <td><font size="5"><b>성명</b></font></td>
      <td><%=name %></td>
    </tr>
    <tr>
      <td>나이</td>
      <td><%=age %></td>
    </tr>
    <tr>
      <td>성별</td><td><%=gender %></td>
    </tr>
    <tr>
      <td>취미</td>
      <td>
		  <%
		    for(String hobby  : hobbys) {
		    	out.print(hobby + " / ");
		    }
		  %>
		  </td>
		</tr>
  </table>
  <br/>
  <p><a href="test11.jsp" class="btn btn-success">돌아가기</a></p>
</div>
<p><br/></p>
</body>
</html>