<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test11.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script>
    'use strict';
  
    function fCheck() {
    	let name = myform.name.value;
    	
    	if(name == "") {
    		alert("이름을 입력하세요?");
    		myform.name.focus();
    		return false;
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
  <h2>값 전송하기(get방식)</h2>
  <!-- <form name="myform" method="get" action="../../atom/t7"> -->
  <!-- <form name="myform" method="post" action="../../test11Ok"> -->
  <form name="myform" method="post" action="test11Ok.jsp">
    성명 : <input type="text" name="name" value="Hong Kil Dong" class="form-control"/>
    나이 : <input type="number" name="age" value="25" class="form-control"/>
    <div>
    성별 : <input type="radio" name="gender" value="남자" checked />남자
          <input type="radio" name="gender" value="여자" />여자
    </div>
    <div>
      취미 : 
          <input type="checkbox" name="hobby" value="등산" checked>등산
          <input type="checkbox" name="hobby" value="낚시">낚시
          <input type="checkbox" name="hobby" value="독서">독서
          <input type="checkbox" name="hobby" value="음악감상">음악감상
          <input type="checkbox" name="hobby" value="수영">수영
    </div>
    <input type="button" value="전송" onclick="fCheck()" class="btn btn-success"/>
  </form>
</div>
<p><br/></p>
</body>
</html>