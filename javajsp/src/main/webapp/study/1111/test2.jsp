<!-- 지시자(디렉티브)  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
	<!-- HTML 주석 -->
	<%-- 이곳은 JSP 주석입니다. --%>
  <h2>이곳은 1111폴더의 test1.jsp입니다.</h2>
  <% // 스크립틀릿(자바코드를 작성하는 공간)
    // 이곳은 자바 한줄 주석입니다.
    /*
       이곳은 자바 여러줄 주석입니다.
    */
    System.out.println("이곳은 jsp파일 입니다.");
  
    out.println("<font color='red'>이곳은 jsp의 out메소드</font> 입니다.");
  %>
  <hr/>
  <%="안녕하세요. 이곳은 <b>표현식(Expression)</b> 내부입니다.<br/>" %>
</div>
<p><br/></p>
</body>
</html>