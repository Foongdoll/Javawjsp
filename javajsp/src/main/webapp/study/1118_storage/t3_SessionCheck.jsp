<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t3_SessionCheck.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>세션 확인</h2>
  <br/>
  <div class="border mb-3">
	  <div class="row m-3">
	    <div class="col border p-2">세션 아이디</div>
	    <div class="col border p-2">${sMid}</div>
	  </div>
	  <div class="row m-3">
	    <div class="col border p-2">세션 닉네임</div>
	    <div class="col border p-2">${sNickName}</div>
	  </div>
	  <div class="row m-3">
	    <div class="col border p-2">세션 나이</div>
	    <div class="col border p-2">${sAge}</div>
	  </div>
	  <div class="row m-3">
	    <div class="col border p-2">세션 성명</div>
	    <div class="col border p-2">${sName}</div>
	  </div>
  </div>
  <div>
    <a href="t3_SessionMain.jsp" class="btn btn-success form-control">돌아가기</a>
  </div>
</div>
<p><br/></p>
</body>
</html>