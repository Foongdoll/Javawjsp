<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>필터연습..(한글처리)</title>
  <jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원정보</h2>
  <form name="myform" method="post" action="${pageContext.request.contextPath}/filter/Test1">
  	<p>
  	  성명 : <input type="text" name="name" value="홍길동" class="form-control"/>
  	</p>
  	<p>
  	  성별 : <input type="radio" name="gender" value="남자" checked />남자
  	  			<input type="radio" name="gender" value="여자" />여자
  	</p>
  	<p>
  	  직업 : <input type="text" name="job" value="프리랜서" class="form-control"/>
  	</p>
  	<p>
  	  <input type="submit" value="전송" class="btn btn-primary"/>
  	</p>
  </form>
</div>
<p><br/></p>
</body>
</html>