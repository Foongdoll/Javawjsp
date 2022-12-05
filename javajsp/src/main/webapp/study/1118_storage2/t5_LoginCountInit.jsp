<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t5_LoginCountInit.jsp -->
<%
	// 누구든 정상 접속하면 방문수 증가시키는 변수값 초기화
	application.setAttribute("aVCnt", 0);
%>
<script>
  location.href = "t5_LoginMember.jsp";
</script>