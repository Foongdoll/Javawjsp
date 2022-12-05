<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t3_SessionMain.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>세션 연습 메인메뉴</h2>
  <hr/>
  <form name="myform" method="post" action="t3_SessionSave.jsp">
    <table class="table">
      <tr>
        <th>아이디</th>
        <td><input type="text" name="mid" value="${sMid}" autofocus class="form-control"/></td>
      </tr>
      <tr>
        <th>닉네임</th>
        <td><input type="text" name="nickName" value="${sNickName}" class="form-control"/></td>
      </tr>
      <tr>
        <th>나이</th>
        <td><input type="text" name="age" value="${sAge}" class="form-control"/></td>
      </tr>
      <tr>
        <th>성명</th>
        <td><input type="text" name="name" value="${sName}" class="form-control"/></td>
      </tr>
      <tr>
        <th>세션 ID</th>
        <td><%=session.getId()%></td>
      </tr>
    </table>
	  <div class="row mb-3">
	    <div class="col-6"><input type="submit" value="세션저장" class="btn btn-success form-control"/></div>
	    <div class="col-6"><a href="t3_SessionCheck.jsp" class="btn btn-success form-control">세션 확인</a></div>
	  </div>
	  <div class="row">
	    <div class="col"><a href="t3_SessionDeleteAll.jsp" class="btn btn-success form-control">세션(전체) 삭제</a></div>
	    <div class="col"><a href="t3_SessionDeleteNick.jsp" class="btn btn-success form-control">세션(닉네임) 삭제</a></div>
	  </div>
	  <div class="row">
	    <div class="col-12 mt-3"><a href="t3_SessionGroup.jsp" class="btn btn-success form-control">세션그룹 확인</a></div>
	  </div>
  </form>
</div>
<p><br/></p>
</body>
</html>