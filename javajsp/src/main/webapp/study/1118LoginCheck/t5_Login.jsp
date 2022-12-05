<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String mid = "";
	
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cMid")) {
				mid = cookies[i].getValue();
				pageContext.setAttribute("mid", mid);
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t5_Login.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <form name="myForm" method="post" action="${pageContext.request.contextPath}/study/j1118/T5_LoginOk">
  	<table class="table table-bordered text-center">
  	  <tr>
  	    <td colspan="2"><h3>로 그 인</h3></td>
  	  </tr>
  	  <tr>
  	  	<th class="bg-secondary text-white">아이디</th>
  	  	<td><input type="text" name="mid" value="${mid}" placeholder="아이디를 입력하세요." autofocus class="form-control"/></td>
  	  </tr>
  	  <tr>
  	  	<th class="bg-secondary text-white">비밀번호</th>
  	  	<td><input type="password" name="pwd" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
  	  </tr>
  	  <tr>
  	    <td colspan="2">
  	      <button type="submit" class="btn btn-success">로그인</button> &nbsp;&nbsp;
  	      <button type="reset" class="btn btn-warning">다시입력</button> &nbsp;&nbsp;&nbsp;
  	      <input type="checkbox" name="idSave" checked /> 아이디 저장
  	    </td>
  	  </tr>
  	</table>
  </form>
</div>
<p><br/></p>
</body>
</html>