<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String mid = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t5_LoginMember.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 전용방</h2>
  <p><font color="blue">${sMid}</font>님 로그인 중이십니다.</p>
	<hr/>
	<p><img src="${pageContext.request.contextPath}/images/3.jpg" width="300px"/></p>
	<hr/>
	<p>
	  방문카운트(session) : <br/>
	  전체 총방문카운드(application) : <font color='red'><b>${aVisitCnt}</b></font>
	</p>
  <hr/>
	<div class="row">
<%  if(mid.equals("admin")) { %>
	  <div class="col"><a href="${pageContext.request.contextPath}/study/1118_storage/t5_LoginDelete.jsp" class="btn btn-success form-control">전체 방문카운트 초기화</a></div>
<%  } %>
	  <div class="col"><a href="${pageContext.request.contextPath}/study/1118_storage/t5_LogOut.jsp" class="btn btn-success form-control">로그아웃</a></div>
	</div>
	<hr/>
</div>
<p><br/></p>
</body>
</html>