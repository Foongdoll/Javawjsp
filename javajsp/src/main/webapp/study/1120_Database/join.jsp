<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>join.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
  <script>
    'use strict';
    
    function fCheck() {
    	//  폼의 내용을 가져와서 유효성 검사....(아이디/비밀번호/성명은 모두 20자 이하...)
    	let mid = document.getElementById("mid").value;
    	
    	if(mid.trim() == "") {
    		alert("아이디를 입력하세요...");
    		document.getElementById("mid").focus();
    	}
    	
    	else {
    		myform.submit();
    	}
    }
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 가입</h2>
  <form name="myform" method="post" action="${pageContext.request.contextPath}/database/JoinOk">
    <table class="table">
      <tr>
        <th>아이디</th>
        <td><input type="text" name="mid" id="mid" required class="form-control"/></td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pwd" id="pwd" required class="form-control"/></td>
      </tr>
      <tr>
        <th>성명</th>
        <td><input type="text" name="name" id="name" required class="form-control"/></td>
      </tr>
      <tr>
        <td colspan="2" style="text-align:center">
          <input type="button" value="회원가입" onclick="fCheck()" class="btn btn-success mr-3"/>
          <input type="reset" value="다시입력" class="btn btn-success mr-3"/>
          <input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/study/1120_Database/login.jsp';" class="btn btn-success"/>
        </td>
      </tr>
    </table>
  </form>
</div>
<p><br/></p>
</body>
</html>