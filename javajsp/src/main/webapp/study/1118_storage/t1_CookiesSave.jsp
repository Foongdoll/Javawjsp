<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookiesSave.jsp -->
<%
  String mid = "hkd1234";
  Cookie cookieMid = new Cookie("cMid", mid);
  cookieMid.setMaxAge(60*60*24);		// 쿠키의 만료시간 : 단위 '초' , 1일(60*60*24)
  
  String pwd = "1234";
  Cookie cookiePwd = new Cookie("cPwd", pwd);
  cookiePwd.setMaxAge(60*60*24);
  
  String job = "학생";
  Cookie cookieJob = new Cookie("cJob", job);
  cookieJob.setMaxAge(60*60*24);
  
  // 쿠키를 클라이언트에 저장하기(즉, 사용자 컴퓨터에 저장된다.)
  response.addCookie(cookieMid);
  response.addCookie(cookiePwd);
  response.addCookie(cookieJob);
%>
<script>
  alert("쿠키에 저장 완료!!");
  location.href = "t1_CookiesMain.jsp";
</script>