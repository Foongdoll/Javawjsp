<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  안녕하세요..<br/>
  <%
    String name = "홍길동";
  
    out.println("name : " + name);
    out.println("name2 : " + name);
  %>
</div>
<p><br/></p>
</body>
</html>