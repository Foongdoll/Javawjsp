<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionSave.jsp -->
<%
  String mid = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "hkd1234" : request.getParameter("mid");
  String nickName = (request.getParameter("nickName")==null || request.getParameter("nickName")=="") ? "홍장군" : request.getParameter("nickName");
  int age = (request.getParameter("age")==null || request.getParameter("age")=="")? 20 : Integer.parseInt(request.getParameter("age"));
  String name = (request.getParameter("name")==null || request.getParameter("name")=="") ? "홍길동" : request.getParameter("name");
  
  session.setAttribute("sMid", mid);
  session.setAttribute("sNickName", nickName);
  session.setAttribute("sAge", age);
  session.setAttribute("sName", name);
%>
<script>
  alert("${sName}님 세션 저장 완료!!");
  location.href = "t3_SessionMain.jsp";
</script>