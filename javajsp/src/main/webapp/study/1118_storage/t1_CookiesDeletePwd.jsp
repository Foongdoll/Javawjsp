<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookiesDelete.jsp -->
<%
  Cookie[] cookies = request.getCookies();

  if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cPwd")) {
				cookies[i].setMaxAge(0);		// 쿠키의 만료시간을 0으로 설정하여 쿠키를 제거한다.
				response.addCookie(cookies[i]);
			}
		}
  }
%>
<script>
  alert("비밀번호 쿠키 삭제 완료!!");
  location.href = "t1_CookiesMain.jsp";
</script>