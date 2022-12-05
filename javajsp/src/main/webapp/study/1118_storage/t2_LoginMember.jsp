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
  
  String imsiMid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
  if(mid.equals("")) pageContext.setAttribute("mid", imsiMid);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t2_LoginMember.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 전용방</h2>
  <p><font color="blue">${mid}</font>님 로그인 중이십니다.</p>
	<hr/>
	<p><img src="${pageContext.request.contextPath}/images/3.jpg" width="300px"/></p>
	<hr/>
	<div class="row">
	  <div class="col"><a href="${pageContext.request.contextPath}/study/1118_storage/t2_LoginDelete.jsp" class="btn btn-success form-control">쿠키의 아이디 삭제</a></div>
	  <div class="col"><a href="${pageContext.request.contextPath}/study/1118_storage/t2_LogOut.jsp?mid=${mid}" class="btn btn-success form-control">로그아웃</a></div>
	</div>
	<hr/>
</div>
<p><br/></p>
</body>
</html>