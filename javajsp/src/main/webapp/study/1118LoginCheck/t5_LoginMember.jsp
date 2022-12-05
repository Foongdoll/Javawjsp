<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mid = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
	
	if(mid.equals("")) {
		out.println("<script>");
		out.println("alert('로그인후 사용하세요.');");
		out.println("location.href='t5_Login.jsp';");
		out.println("</script>");
	}
	
	int vCnt = 0;
	if(session.getAttribute("sVCnt") != null) {
		vCnt = (int) session.getAttribute("sVCnt") + 1;
		session.setAttribute("sVCnt", vCnt);
	}
	else {
		session.setAttribute("sVCnt", 1);
	}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>t5_LoginMember.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container text-center">
  <h2>회원 전용방</h2>
  <hr/>
  <p><font color="blue"><b>${sMid}</b></font>님 로그인 중이십니다.</p>
  <hr/>
  <h4>F5번키를 눌러보세요</h4>
  <hr/>
  <p>
    방문카운트(session) : <font color='red'><b>${sVCnt}</b></font> - 자신만 증가<br/>
    전체 방문카운트(application) : <font color='red'><b>${aVCnt}</b></font> - 다른회원증가시 같이 증가
  </p>
  <hr/>
  <p><img src="<%=request.getContextPath()%>/images/1.jpg" width="400px"/></p>
  <hr/>
<%if(mid.equals("admin")) { %>
  <div><a href="${pageContext.request.contextPath}/study/j1118/T5_LoginCountInit" class="btn btn-success form-control m-1">전체 방문카운트 초기화</a></div>
<%} %>
  <div><a href="${pageContext.request.contextPath}/study/j1118/T5_LogOut" class="btn btn-success form-control m-1">로그아웃</a></div>
</div>
<p><br/></p>
</body>
</html>