<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t2_LogOut.jsp -->
<%
  String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
  pageContext.setAttribute("mid", mid);
%>

<script>
  alert("${mid}님 로그아웃 완료!!");
  location.href = "t2_Login.jsp";
</script>