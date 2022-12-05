<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>el1.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>EL(Expression Language)</h2>
  <hr/>
  <p>
    <b>용도 : 사용자가 '값/변수/수식/객체'을 전송후에 저장해서 처리할 용도로 사용</b>
    <b>표기법 : $ {값/변수/수식/객체/제어문}</b>
  </p>
  <hr/>
<%
  String atom = "Seoul";	// 실제업무에서는 앞의 폼태그를 통해서 넘어온 값들을 변수로 저장받는다고 가정(String atom = request.getParameter("atom"));
  String name = "홍길동";
  int su1 = 100, su2 = 200;
  // 앞의 데이터가 컨트롤러(서비스)객체에서 저장소를통해서 넘겨주었을경우에는 EL을 통해서 바로 받을수 있다. 
  
  pageContext.setAttribute("atom", atom);
  pageContext.setAttribute("name", name);
  pageContext.setAttribute("su1", su1);
  pageContext.setAttribute("su2", su2);
%>
  <h4>스클립틀릿을 사용하는 방법과 표현식을 이용한 방법</h4>
  atom = <%=atom %><br/>
  name = <%=name %><br/>
  su1 = <%=su1 %><br/>
  su2 = <%=su2 %><br/>
  <h4>jsp에서 폼태그(get/post)로 넘긴자료를 jsp로 바로 받을때</h4>
  atom = ${param.atom}<br/>
  name = ${param.name}<br/>
  su1 = ${param.su1}<br/>
  su2 = ${param.su2}<br/>
  <h4>jsp에서 폼태그(get/post)로 넘긴자료를 서블릿을 통해서 받을때</h4>
  atom = ${vo.atom}<br/>
  name = ${vo.name}<br/>
  su1 = ${vo.su1}<br/>
  su2 = ${vo.su2}<br/>
  
  <hr/>
<%
  String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
  pageContext.setAttribute("mid", mid);
%>
  <h3>현재 폼에서의 값의 전달</h3>
  <div>
    <form>
      <div>아이디 : <input type="text" name="mid" value="${mid}"/></div>
      <div><input type="submit" value="전송"/></div>
      <div>전송된 아이디 : <font color="red"><b>${mid}</b></font></div>
    </form>
  </div>
</div>
<p><br/></p>
</body>
</html>